json.extract! job, :id, :title, :description, :company_id, :paid_at, :expires_at, :closed_at, :created_at, :updated_at
json.url job_url(job, format: :json)
