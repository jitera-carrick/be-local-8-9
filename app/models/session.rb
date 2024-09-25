# typed: strict
class Session < ApplicationRecord
  belongs_to :user

  validates :session_token, presence: true, uniqueness: true
  validates :expires_at, presence: true
  # ... other validations for user_id
end