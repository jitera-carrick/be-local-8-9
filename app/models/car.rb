class Car < ApplicationRecord
  validates :uuid, presence: true, length: { maximum: 255 }
  belongs_to :category
  # 10

  # Main 1
end
