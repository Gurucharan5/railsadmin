require 'test_helper'

class CompanyadminControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get companyadmin_index_url
    assert_response :success
  end

end
