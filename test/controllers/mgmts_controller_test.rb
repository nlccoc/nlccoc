require 'test_helper'

class MgmtsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
