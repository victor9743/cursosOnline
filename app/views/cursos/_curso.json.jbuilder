json.extract! curso, :id, :titulo, :descricao, :nivel_dificuldade, :duracao, :integer, :preco, :id_instrutor, :created_at, :updated_at
json.url curso_url(curso, format: :json)
