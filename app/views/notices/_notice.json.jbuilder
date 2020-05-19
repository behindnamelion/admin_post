json.extract! notice, :id, :title, :body, :noticetime, :isshown, :created_at, :updated_at
json.url notice_url(notice, format: :json)
