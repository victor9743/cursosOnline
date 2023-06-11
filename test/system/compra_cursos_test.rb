require "application_system_test_case"

class CompraCursosTest < ApplicationSystemTestCase
  setup do
    @compra_curso = compra_cursos(:one)
  end

  test "visiting the index" do
    visit compra_cursos_url
    assert_selector "h1", text: "Compra Cursos"
  end

  test "creating a Compra curso" do
    visit compra_cursos_url
    click_on "New Compra Curso"

    check "Aprovado" if @compra_curso.aprovado
    fill_in "Cod barras", with: @compra_curso.cod_barras
    fill_in "Descricao", with: @compra_curso.descricao
    fill_in "Valor", with: @compra_curso.valor
    click_on "Create Compra curso"

    assert_text "Compra curso was successfully created"
    click_on "Back"
  end

  test "updating a Compra curso" do
    visit compra_cursos_url
    click_on "Edit", match: :first

    check "Aprovado" if @compra_curso.aprovado
    fill_in "Cod barras", with: @compra_curso.cod_barras
    fill_in "Descricao", with: @compra_curso.descricao
    fill_in "Valor", with: @compra_curso.valor
    click_on "Update Compra curso"

    assert_text "Compra curso was successfully updated"
    click_on "Back"
  end

  test "destroying a Compra curso" do
    visit compra_cursos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Compra curso was successfully destroyed"
  end
end
