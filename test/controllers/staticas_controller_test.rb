require "test_helper"

class StaticasControllerTest < ActionDispatch::IntegrationTest
  test "should get contact" do
    get staticas_contact_url
    assert_response :success
  end

  test "should get nosotros" do
    get staticas_nosotros_url
    assert_response :success
  end
end
