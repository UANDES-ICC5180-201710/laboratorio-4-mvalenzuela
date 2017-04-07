class Course < ApplicationRecord
  has_many :enrollments
  has_many :students, through: :enrollments
  belongs_to :teacher, class_name: 'Person', foreign_key: 'person_id'

  validates_presence_of :title, :code, :quota
  validates :title, length: { maximum: 30 }
  validates :title, uniqueness: true
  validates :code, length: { maximum: 10 }
  validates :code, uniqueness: true
  #validar que code es numero?

  def to_s
    return title
  end
end
