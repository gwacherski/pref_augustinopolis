json.extract! nota, :id, :cnpj_fornecedor, :nome_fornecedor, :data, :numero_da_nota, :serie, :regime, :valor, :servicos, :valor_final, :created_at, :updated_at
json.url nota_url(nota, format: :json)
