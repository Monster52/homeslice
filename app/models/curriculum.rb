class Curriculum < ApplicationRecord
  belongs_to :student
  belongs_to :user

  has_many :subjects

  validates :title, presence: true
end
