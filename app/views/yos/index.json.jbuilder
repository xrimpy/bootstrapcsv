json.array!(@yos) do |yo|
  json.extract! yo, :id, :title
  json.url yo_url(yo, format: :json)
end
