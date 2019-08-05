class Page < ApplicationRecord
  # Associations (are always instance methods)
  belongs_to :subject
  has_many :sections

  # Validations
  validates :name, presence: true
  validates :subject, presence: true

  # Named scopes (are always class methods)
  scope :published, -> { where(visible: true) }

  # Callbacks (are always instance methods)
  after_save :update_parent_subject

  private

    def update_parent_subject
      # self.subject.update_attributes(updated_at: Time.now)
      self.subject.touch
    end
end
