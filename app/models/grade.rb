class Grade < ApplicationRecord
  belongs_to :person
  belongs_to :assigment

  validates_presence_of :value
  validates :value, length: { minimum: 1 }
  validates :value, length: { minimum: 7 }
end
