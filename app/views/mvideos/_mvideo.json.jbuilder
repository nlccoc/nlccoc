json.extract! mvideo, :id, :title, :date, :path, :desc, :created_at, :updated_at
json.url mvideo_url(mvideo, format: :json)