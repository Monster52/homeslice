class Student < ApplicationRecord
  has_many :curriculums
  belongs_to :user

  validates :name, presence: true
end
