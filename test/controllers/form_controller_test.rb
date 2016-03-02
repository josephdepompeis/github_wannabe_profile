require 'test_helper'

class FormControllerTest < ActionController::TestCase
  test "should get ask" do
    get :ask
    assert_response :success
  end

  test "should get show" do
    post :show
    assert_response :success
  end

end
