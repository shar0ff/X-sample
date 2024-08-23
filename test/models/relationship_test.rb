require "test_helper"

class RelationshipTest < ActiveSupport::TestCase
  def setup
    @user = users(:ivan)
    @other_user = users(:borys)
    @relationship = Relationship.new(follower_id: @user.id, followed_id: @other_user.id)
  end

  test "should be valid" do
    assert @relationship.valid?
  end

  test "should require a follower_id" do
    @relationship.follower_id = nil
    assert_not @relationship.valid?
  end

  test "should require a followed_id" do
    @relationship.followed_id = nil
    assert_not @relationship.valid?
  end
end
