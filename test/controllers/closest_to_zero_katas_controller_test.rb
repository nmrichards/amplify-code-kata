require 'test_helper'

class ClosestToZeroKatasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get closest_to_zero_katas_index_url
    assert_response :success
  end

  test "should post submit_form" do
    post closest_to_zero_katas_submit_form_path
    assert_response :success
  end
end
