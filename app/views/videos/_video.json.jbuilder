json.extract! video, :id, :title, :body, :youtube_url, :created_at, :updated_at
json.url video_url(video, format: :json)
