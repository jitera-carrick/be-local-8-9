# typed: strict
class User < ApplicationRecord
  has_many :sessions, foreign_key: 'user_id'
  
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password_hash, presence: true
  validates :last_login, presence: true
  validates :is_active, inclusion: { in: [true, false] }
end