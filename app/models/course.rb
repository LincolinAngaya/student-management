class Course < ApplicationRecord
      # Validation for name
  validates :name, presence: true, length: { maximum: 255 }

  # Validation for description
  validates :description, presence: true
end

