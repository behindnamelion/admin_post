json.extract! frequent_question, :id, :title, :body, :asktime, :isshown, :question_type, :created_at, :updated_at
json.url frequent_question_url(frequent_question, format: :json)
