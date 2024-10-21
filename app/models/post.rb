class Post < ApplicationRecord
  # Association references
  has_many :comments, dependent: :destroy
  belongs_to :user

  # Presence validations
  validates :user, presence: true
  validates :title, presence: true
  validates :body, presence: true

  # Uniqueness validations
  validates :title, uniqueness: { case_sensitive: false }
end
