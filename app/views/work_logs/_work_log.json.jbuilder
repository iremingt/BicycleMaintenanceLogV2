json.extract! work_log, :id, :title, :description, :date, :hoursUntilServiceDue, :created_at, :updated_at
json.url work_log_url(work_log, format: :json)
