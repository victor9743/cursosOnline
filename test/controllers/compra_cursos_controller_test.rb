require "test_helper"

class CompraCursosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @compra_curso = compra_cursos(:one)
  end

  test "should get index" do
    get compra_cursos_url
    assert_response :success
  end

  test "should get new" do
    get new_compra_curso_url
    assert_response :success
  end

  test "should create compra_curso" do
    assert_difference('CompraCurso.count') do
      post compra_cursos_url, params: { compra_curso: { aprovado: @compra_curso.aprovado, cod_barras: @compra_curso.cod_barras, descricao: @compra_curso.descricao, valor: @compra_curso.valor } }
    end

    assert_redirected_to compra_curso_url(CompraCurso.last)
  end

  test "should show compra_curso" do
    get compra_curso_url(@compra_curso)
    assert_response :success
  end

  test "should get edit" do
    get edit_compra_curso_url(@compra_curso)
    assert_response :success
  end

  test "should update compra_curso" do
    patch compra_curso_url(@compra_curso), params: { compra_curso: { aprovado: @compra_curso.aprovado, cod_barras: @compra_curso.cod_barras, descricao: @compra_curso.descricao, valor: @compra_curso.valor } }
    assert_redirected_to compra_curso_url(@compra_curso)
  end

  test "should destroy compra_curso" do
    assert_difference('CompraCurso.count', -1) do
      delete compra_curso_url(@compra_curso)
    end

    assert_redirected_to compra_cursos_url
  end
end
