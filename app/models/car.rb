class Car < ApplicationRecord
  validates :uuid, presence: true, uniqueness: true, length: { maximum: 255 }

  # 1
end