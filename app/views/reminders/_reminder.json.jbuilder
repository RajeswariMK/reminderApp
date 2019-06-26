json.extract! reminder, :id, :name, :date, :type, :created_at, :updated_at
json.url reminder_url(reminder, format: :json)
