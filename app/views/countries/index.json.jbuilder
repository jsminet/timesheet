json.array!(@countries) do |country|
  json.extract! country, :id, :name, :iso_code_2, :iso_code_3
  json.url country_url(country, format: :json)
end
