json.array!(@events) do |event|
  json.extract! event, :id, :user_id, :details, :occurs_at
  json.url event_url(event, format: :json)
end
