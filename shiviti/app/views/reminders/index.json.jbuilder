json.array!(@reminders) do |reminder|
  json.extract! reminder, :id, :phone_number, :time, :user_id
  json.url reminder_url(reminder, format: :json)
end
