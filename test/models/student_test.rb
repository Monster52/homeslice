require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  def setup
    @cindy = users(:cindy)
  end

  def teardown
    Student.last.destroy
  end

  def test_name_validation
    student = Student.new
    student.name = "Bella Waguespack"
    student.user_id = @cindy.id

    assert student.save!
  end
end
