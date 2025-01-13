class Category < ApplicationRecord
  has_many :creams, dependent: :destroy
end
