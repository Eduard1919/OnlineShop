json.extract! user, :id, :login, :permissions, :salt, :password, :created_at, :updated_at
json.url user_url(user, format: :json)
