class Book < ApplicationRecord
  validates :uuid, length: { maximum: 255 }

  # Additional validations for uuid can be added here if needed in the future
end