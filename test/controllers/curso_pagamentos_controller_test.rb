require "test_helper"

class CursoPagamentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @curso_pagamento = curso_pagamentos(:one)
  end

  test "should get index" do
    get curso_pagamentos_url
    assert_response :success
  end

  test "should get new" do
    get new_curso_pagamento_url
    assert_response :success
  end

  test "should create curso_pagamento" do
    assert_difference('CursoPagamento.count') do
      post curso_pagamentos_url, params: { curso_pagamento: { aprovado: @curso_pagamento.aprovado, cod_barras: @curso_pagamento.cod_barras, descricao: @curso_pagamento.descricao, valor: @curso_pagamento.valor } }
    end

    assert_redirected_to curso_pagamento_url(CursoPagamento.last)
  end

  test "should show curso_pagamento" do
    get curso_pagamento_url(@curso_pagamento)
    assert_response :success
  end

  test "should get edit" do
    get edit_curso_pagamento_url(@curso_pagamento)
    assert_response :success
  end

  test "should update curso_pagamento" do
    patch curso_pagamento_url(@curso_pagamento), params: { curso_pagamento: { aprovado: @curso_pagamento.aprovado, cod_barras: @curso_pagamento.cod_barras, descricao: @curso_pagamento.descricao, valor: @curso_pagamento.valor } }
    assert_redirected_to curso_pagamento_url(@curso_pagamento)
  end

  test "should destroy curso_pagamento" do
    assert_difference('CursoPagamento.count', -1) do
      delete curso_pagamento_url(@curso_pagamento)
    end

    assert_redirected_to curso_pagamentos_url
  end
end
