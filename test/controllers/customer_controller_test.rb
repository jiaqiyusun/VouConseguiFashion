require 'test_helper'

class CustomerControllerTest < ActionDispatch::IntegrationTest
  test "should get index_customer" do
    get customer_index_customer_url
    assert_response :success
  end

end
