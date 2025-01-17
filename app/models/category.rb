class Category < ApplicationRecord
  # 1
  has_many :creams, dependent: :destroy
  has_many :products, dependent: :destroy
  has_many :cars
end
