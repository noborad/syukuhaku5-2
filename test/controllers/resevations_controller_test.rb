require 'test_helper'

class ResevationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get resevations_new_url
    assert_response :success
  end

  test "should get create" do
    get resevations_create_url
    assert_response :success
  end

end
