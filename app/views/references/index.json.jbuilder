json.array!(@references) do |reference|
  json.extract! reference, :id, :name, :age
  json.url reference_url(reference, format: :json)
end
