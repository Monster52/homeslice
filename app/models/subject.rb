class Subject < ApplicationRecord
  belongs_to :curriculum
  has_many :resources

  validates :title, presence: true
end
