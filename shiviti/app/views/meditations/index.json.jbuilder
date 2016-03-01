json.array!(@meditations) do |meditation|
  json.extract! meditation, :id, :user_id, :note, :start_time, :end_time, :before_mood, :after_mood
  json.url meditation_url(meditation, format: :json)
end
