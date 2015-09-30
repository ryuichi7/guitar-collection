json.array!(@pedals) do |pedal|
  json.extract! pedal, :id, :make, :model
  json.url pedal_url(pedal, format: :json)
end
