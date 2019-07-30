class Subject < ApplicationRecord
  # Validations
  validates :name, presence: true, uniqueness: true
  validates :position, presence: true
end
