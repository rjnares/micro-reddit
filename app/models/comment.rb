class Comment < ApplicationRecord
  # Association references
  belongs_to :user
  belongs_to :post

  # Presence validations
  validates :user, presence: true
  validates :post, presence: true
  validates :body, presence: true
end
