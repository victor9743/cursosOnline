require "test_helper"

class AreaConhecimentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @area_conhecimento = area_conhecimentos(:one)
  end

  test "should get index" do
    get area_conhecimentos_url
    assert_response :success
  end

  test "should get new" do
    get new_area_conhecimento_url
    assert_response :success
  end

  test "should create area_conhecimento" do
    assert_difference('AreaConhecimento.count') do
      post area_conhecimentos_url, params: { area_conhecimento: { ativo: @area_conhecimento.ativo, descricao: @area_conhecimento.descricao } }
    end

    assert_redirected_to area_conhecimento_url(AreaConhecimento.last)
  end

  test "should show area_conhecimento" do
    get area_conhecimento_url(@area_conhecimento)
    assert_response :success
  end

  test "should get edit" do
    get edit_area_conhecimento_url(@area_conhecimento)
    assert_response :success
  end

  test "should update area_conhecimento" do
    patch area_conhecimento_url(@area_conhecimento), params: { area_conhecimento: { ativo: @area_conhecimento.ativo, descricao: @area_conhecimento.descricao } }
    assert_redirected_to area_conhecimento_url(@area_conhecimento)
  end

  test "should destroy area_conhecimento" do
    assert_difference('AreaConhecimento.count', -1) do
      delete area_conhecimento_url(@area_conhecimento)
    end

    assert_redirected_to area_conhecimentos_url
  end
end
