json.extract! user, :id, :name, :hashed_password, :salt, :created_at, :updated_at, :destroy
json.url user_url(user, format: :json)
