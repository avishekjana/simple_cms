class Subject < ApplicationRecord
  # Associations
  has_many :pages, dependent: :delete_all

  # Validations
  validates :name, presence: true, uniqueness: true
  validates :position, presence: true

  # Named scopes
  scope :published, -> { where(visible: true) }

end
