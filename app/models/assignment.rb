class Assignment < ApplicationRecord
  belongs_to :course

  validates_presence_of :title, :statement
  validates :title, length: { maximum: 30 }
end
