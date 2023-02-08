json.extract! user, :id, :email, :full_name, :phone, :address, :created_at, :updated_at
json.url user_url(user, format: :json)
