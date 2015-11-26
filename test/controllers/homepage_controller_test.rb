require 'test_helper'

class HomepageControllerTest < ActionController::TestCase
  test "should get front" do
    get :front
    assert_response :success
  end

end
