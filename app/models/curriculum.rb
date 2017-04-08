class Curriculum < ApplicationRecord
  belongs_to :student
  belongs_to :user

  validates :title, presence: true
end
