require 'test_helper'

class SubjectTest < ActiveSupport::TestCase
  def setup
    @curriculum = curriculums(:curriculum_one)
  end

  def teardown

  end

  def test_subject_title_validates_presences
    subject = Subject.new
    subject.title = "Reading"
    subject.curriculum_id = @curriculum.id

    assert subject.save!
  end
end
