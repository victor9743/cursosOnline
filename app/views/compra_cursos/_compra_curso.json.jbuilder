json.extract! compra_curso, :id, :descricao, :cod_barras, :valor, :aprovado, :created_at, :updated_at
json.url compra_curso_url(compra_curso, format: :json)
