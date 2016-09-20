json.extract! event, :id, :title, :desc, :start_time, :interval_min, :date, :interval_day, :more_link, :created_at, :updated_at
json.url event_url(event, format: :json)