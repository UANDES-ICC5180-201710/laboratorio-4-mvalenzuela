class Person < ApplicationRecord
  has_many :enrollements, through: :enrollments

  validates_presence_of :first_name, :last_name, :email
  validates :first_name, length: { maximum: 30 }
  validates :last_name, length: { maximum: 30 }
  validates :email, length: { maximum: 50 }
  validates :email, uniqueness: true
  #validar formato email
  validates :email, confirmation: true
  
  def to_s
    return first_name + ' ' + last_name
  end
end
