class Section < ApplicationRecord
  # Associations
  belongs_to :page

  # Validations
  validates :name, presence: true
  validates :position, presence: true

  # Named scopes
  scope :published, -> { where(visible: true) }
end
