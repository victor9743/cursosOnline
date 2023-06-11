require "application_system_test_case"

class AreaConhecimentosTest < ApplicationSystemTestCase
  setup do
    @area_conhecimento = area_conhecimentos(:one)
  end

  test "visiting the index" do
    visit area_conhecimentos_url
    assert_selector "h1", text: "Area Conhecimentos"
  end

  test "creating a Area conhecimento" do
    visit area_conhecimentos_url
    click_on "New Area Conhecimento"

    check "Ativo" if @area_conhecimento.ativo
    fill_in "Descricao", with: @area_conhecimento.descricao
    click_on "Create Area conhecimento"

    assert_text "Area conhecimento was successfully created"
    click_on "Back"
  end

  test "updating a Area conhecimento" do
    visit area_conhecimentos_url
    click_on "Edit", match: :first

    check "Ativo" if @area_conhecimento.ativo
    fill_in "Descricao", with: @area_conhecimento.descricao
    click_on "Update Area conhecimento"

    assert_text "Area conhecimento was successfully updated"
    click_on "Back"
  end

  test "destroying a Area conhecimento" do
    visit area_conhecimentos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Area conhecimento was successfully destroyed"
  end
end
