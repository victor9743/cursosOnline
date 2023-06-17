json.extract! curso_pagamento, :id, :descricao, :cod_barras, :valor, :aprovado, :created_at, :updated_at
json.url curso_pagamento_url(curso_pagamento, format: :json)
