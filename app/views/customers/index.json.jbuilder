json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :code, :full_code, :country_id
  json.url customer_url(customer, format: :json)
end
