require 'test_helper'

class BabysitterKatasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get babysitter_katas_index_url
    assert_response :success
  end

end
