json.extract! event, :id, :name, :start_time, :duration, :created_at, :updated_at
json.url event_url(event, format: :json)