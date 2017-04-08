class Subject < ApplicationRecord
  belongs_to :curriculum

  validates :title, presence: true
end
