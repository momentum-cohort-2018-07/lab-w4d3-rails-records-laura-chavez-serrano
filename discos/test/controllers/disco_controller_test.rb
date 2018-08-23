require 'test_helper'

class DiscoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get disco_index_url
    assert_response :success
  end

end
