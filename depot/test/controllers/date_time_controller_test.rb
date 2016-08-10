require 'test_helper'

class DateTimeControllerTest < ActionController::TestCase
  test "should get date" do
    get :date
    assert_response :success
  end

  test "should get time" do
    get :time
    assert_response :success
  end

end
