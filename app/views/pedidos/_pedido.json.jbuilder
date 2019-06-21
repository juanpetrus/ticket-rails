json.extract! pedido, :id, :descricao, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
