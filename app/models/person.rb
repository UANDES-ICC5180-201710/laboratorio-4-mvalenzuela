class Person < ApplicationRecord
  has_many :enrollements, through: :enrollments

  validates_presence_of :first_name, :last_name, :email
  validates :first_name, length: { maximum: 30 }
  validates :last_name, length: { maximum: 30 }
  validates :email, length: { maximum: 50 }
  validates :email, uniqueness: true
  validates :email, format: { with: /[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]/}
  validates :email, confirmation: true

  def to_s
    return first_name + ' ' + last_name
  end
end
