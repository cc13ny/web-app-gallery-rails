json.extract! user_education, :id, :user_id, :school_name, :degree, :field_of_study, :start_year, :start_month, :end_year, :end_month, :grade, :description, :created_at, :updated_at
json.url user_education_url(user_education, format: :json)
