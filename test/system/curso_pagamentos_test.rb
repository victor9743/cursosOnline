require "application_system_test_case"

class CursoPagamentosTest < ApplicationSystemTestCase
  setup do
    @curso_pagamento = curso_pagamentos(:one)
  end

  test "visiting the index" do
    visit curso_pagamentos_url
    assert_selector "h1", text: "Curso Pagamentos"
  end

  test "creating a Curso pagamento" do
    visit curso_pagamentos_url
    click_on "New Curso Pagamento"

    fill_in "Aprovado", with: @curso_pagamento.aprovado
    fill_in "Cod barras", with: @curso_pagamento.cod_barras
    fill_in "Descricao", with: @curso_pagamento.descricao
    fill_in "Valor", with: @curso_pagamento.valor
    click_on "Create Curso pagamento"

    assert_text "Curso pagamento was successfully created"
    click_on "Back"
  end

  test "updating a Curso pagamento" do
    visit curso_pagamentos_url
    click_on "Edit", match: :first

    fill_in "Aprovado", with: @curso_pagamento.aprovado
    fill_in "Cod barras", with: @curso_pagamento.cod_barras
    fill_in "Descricao", with: @curso_pagamento.descricao
    fill_in "Valor", with: @curso_pagamento.valor
    click_on "Update Curso pagamento"

    assert_text "Curso pagamento was successfully updated"
    click_on "Back"
  end

  test "destroying a Curso pagamento" do
    visit curso_pagamentos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Curso pagamento was successfully destroyed"
  end
end
