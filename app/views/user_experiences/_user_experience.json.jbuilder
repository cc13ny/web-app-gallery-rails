json.extract! user_experience, :id, :user_id, :company_name, :company_id, :title, :position_variant_id, :start_year, :start_month, :end_year, :end_month, :present, :location, :description, :created_at, :updated_at
json.url user_experience_url(user_experience, format: :json)
