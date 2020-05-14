json.extract! private_question, :id, :title, :body, :asktime, :created_at, :updated_at
json.url private_question_url(private_question, format: :json)
