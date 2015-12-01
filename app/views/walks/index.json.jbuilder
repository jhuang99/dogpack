json.array!(@walks) do |walk|
  json.extract! walk, :id, :title, :date, :description
  json.url walk_url(walk, format: :json)
end
