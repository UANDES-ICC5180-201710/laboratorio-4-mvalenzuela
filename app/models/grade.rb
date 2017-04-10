class Grade < ApplicationRecord
  belongs_to :person
  belongs_to :assignment

  validates_presence_of :value
  validates :value, length: { minimum: 1 }
  validates :value, length: { maximum: 7 }
  validates :value, numericality: true
end
