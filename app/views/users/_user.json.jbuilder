json.extract! user, :id, :login, :password, :confirmation, :name, :lastname, :email, :photoURL, :created_at, :updated_at
json.url user_url(user, format: :json)
