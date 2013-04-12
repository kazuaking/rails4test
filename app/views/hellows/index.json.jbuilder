json.array!(@hellows) do |hellow|
  json.extract! hellow, :name, :start_at, :end_at, :memo, :category
  json.url hellow_url(hellow, format: :json)
end