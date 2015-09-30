json.array!(@guitars) do |guitar|
  json.extract! guitar, :id, :make, :model, :year
  json.url guitar_url(guitar, format: :json)
end
