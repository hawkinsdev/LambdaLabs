require "test_helper"

class AutorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get autors_index_url
    assert_response :success
  end
end
