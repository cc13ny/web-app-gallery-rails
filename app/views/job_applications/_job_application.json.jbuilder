json.extract! job_application, :id, :job_id, :user_id, :withdrawn_at, :applied_at, :created_at, :updated_at
json.url job_application_url(job_application, format: :json)
