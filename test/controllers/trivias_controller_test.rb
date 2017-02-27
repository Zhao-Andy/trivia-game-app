require 'test_helper'

class TriviasControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get trivias_show_url
    assert_response :success
  end

end
