json.array!(@amps) do |amp|
  json.extract! amp, :id, :make, :model, :year
  json.url amp_url(amp, format: :json)
end
