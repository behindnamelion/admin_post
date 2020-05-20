json.extract! business_question, :id, :title, :body, :phone, :email, :company, :user_id, :created_at, :updated_at
json.url business_question_url(business_question, format: :json)
