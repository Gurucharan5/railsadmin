require 'test_helper'

class CompanyuserControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get companyuser_index_url
    assert_response :success
  end

end
