class Micropost < ApplicationRecord
  belongs_to :user
  paginates_per 20

  mount_uploader :picture, PictureUploader

  default_scope -> { order(created_at: :desc) }

  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  validate :picture_size

  private

  # Validates the size of the uploaded image.
  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "should be less than 5MB")
    end
  end
end
