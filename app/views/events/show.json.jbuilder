json.array!(@events) do |event|
  json.extract! event, :id, :name, :description
  json.title event.name
  json.start event.start
  json.end event.finish
  json.user_id event.user_id
  json.customer_id event.customer_id
  json.all_day event.all_day
  json.url event_url(event, format: :html)
end