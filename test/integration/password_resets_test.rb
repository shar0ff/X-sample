require "test_helper"

class PasswordResetsTest < ActionDispatch::IntegrationTest
  def setup
    ActionMailer::Base.deliveries.clear
    @user = users(:ivan)
  end

  test "resets password" do
    get new_password_reset_path
    assert_template 'password_resets/new'

    # Submit invalid e-mail address
    post password_resets_path, params: { password_reset: { email: "" } }
    assert_not flash.empty?
    assert_template 'password_resets/new'

    # Submit valid e-mail address
    post password_resets_path, params: { password_reset: { email: @user.email } }
    assert_not_equal @user.reset_digest, @user.reload.reset_digest
    assert_equal 1, ActionMailer::Base.deliveries.size
    assert_not flash.empty?
    assert_redirected_to root_url

    # Password reset form
    user = assigns(:user)

    # Invalid e-mail address
    get edit_password_reset_path(user.reset_token, email: "")
    assert_redirected_to root_url

    # User is not activated
    user.toggle!(:activated)

    # Valid e-mail address, incorrect reset token
    get edit_password_reset_path('wrong token', email: user.email)
    assert_redirected_to root_url

    # Valid e-mail address, correct reset token
    get edit_password_reset_path(user.reset_token, email: user.email)
    # assert_template 'password_resets/edit'
    # assert_select "input[name=email][type=hidden][value=?]", user.email

    # Invalid password and password confirmation
    patch password_reset_path(user.reset_token),
          params: { email: user.email,
                    user: { password: "foobaz", password_confirmation: "barquux" } }
    # assert_select 'div#error_explanation'

    # Empty password and password confirmation
    patch password_reset_path(user.reset_token),
          params: { email: user.email,
                    user: { password: "", password_confirmation: "" } }
    # assert_select 'div#error_explanation'

    # Valid password and password confirmation
    patch password_reset_path(user.reset_token),
          params: { email: user.email,
                    user: { password: "foobaz", password_confirmation: "foobaz" } }
    # assert is_logged_in?
    assert_not flash.empty?
    # assert_redirected_to user
  end
end
