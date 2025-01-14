class Car < ApplicationRecord
  validates :uuid, presence: true, uniqueness: true, length: { maximum: 255 }
  belongs_to :category
  # 4
end
