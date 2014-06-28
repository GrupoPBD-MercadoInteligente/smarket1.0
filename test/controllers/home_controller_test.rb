require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get datoscuenta" do
    get :datoscuenta
    assert_response :success
  end

end
