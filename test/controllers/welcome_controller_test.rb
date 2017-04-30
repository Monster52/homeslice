require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest

  def setup
    @ross = users(:ross)
  end

  def test_index 
    get "/"
    assert_response :success
  end

end
