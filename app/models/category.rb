class Category < ApplicationRecord
  has_many :creams, dependent: :destroy
  has_many :products, dependent: :destroy
end
