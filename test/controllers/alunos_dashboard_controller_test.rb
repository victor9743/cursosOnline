require "test_helper"

class AlunosDashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get alunos_dashboard_index_url
    assert_response :success
  end
end
