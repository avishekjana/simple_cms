class Subject < ApplicationRecord
  has_many :pages, dependent: :delete_all
  # Validations
  validates :name, presence: true, uniqueness: true
  validates :position, presence: true
end
