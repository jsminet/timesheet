json.array!(@vacancies) do |vacancy|
  json.extract! vacancy, :id, :name, :code
  json.url vacancy_url(vacancy, format: :json)
end
