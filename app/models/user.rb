class User < ApplicationRecord
  # Association references
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  # Presence validations
  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true

  # Length validations
  validates :username, length: { in: 4..12 }
  validates :password, length: { in: 6..16 }

  # Format validations
  validates :email, format: { with: /\A[A-Za-z0-9+_.-]+@([A-Za-z0-9]+\.)+[A-Za-z]{2,6}\z/ }

  # Uniqueness validations
  validates :username, uniqueness: { case_sensitive: false }
  validates :email, uniqueness: { case_sensitive: false }
end
