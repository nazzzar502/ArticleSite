json.extract! article, :id, :title, :photoURL, :decsription, :created_at, :updated_at
json.url article_url(article, format: :json)
