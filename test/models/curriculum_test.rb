require 'test_helper'

class CurriculumTest < ActiveSupport::TestCase
  def setup
    @cindy = users(:cindy)
    @student = students(:bella)
  end

  def teardown
    Curriculum.last.destroy

  end

  def test_curriculum_validates_title
    curriculum = Curriculum.new
    curriculum.user_id = @cindy.id
    curriculum.student_id = @student.id
    curriculum.title = "Bella 2nd Grade Curriculm"

    assert curriculum.save!
  end
end
