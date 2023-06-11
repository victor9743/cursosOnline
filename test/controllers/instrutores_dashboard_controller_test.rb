require "test_helper"

class InstrutoresDashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get instrutores_dashboard_index_url
    assert_response :success
  end
end
