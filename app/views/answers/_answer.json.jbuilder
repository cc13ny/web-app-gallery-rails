json.extract! answer, :id, :question_id, :text, :user_id, :created_at, :updated_at
json.url answer_url(answer, format: :json)
