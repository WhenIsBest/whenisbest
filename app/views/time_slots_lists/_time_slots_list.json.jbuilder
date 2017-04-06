json.extract! time_slots_list, :id, :start_date, :end_date, :duration, :created_at, :updated_at
json.url time_slots_list_url(time_slots_list, format: :json)