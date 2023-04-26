json.extract! maintenance_log, :id, :title, :description, :date, :hoursUntilService, :created_at, :updated_at
json.url maintenance_log_url(maintenance_log, format: :json)
