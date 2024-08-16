class Micropost < ApplicationRecord
  belongs_to :user
  paginates_per 20

  default_scope -> { order(created_at: :desc) }

  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
end
