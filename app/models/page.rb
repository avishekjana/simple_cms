class Page < ApplicationRecord
  # Associations
  belongs_to :subject
  has_many :sections

  # Named scopes
  scope :published, -> { where(visible: true) }

end
