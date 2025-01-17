class Category < ApplicationRecord
  # 2
  has_many :creams, dependent: :destroy
  has_many :products, dependent: :destroy
  has_many :cars
end
