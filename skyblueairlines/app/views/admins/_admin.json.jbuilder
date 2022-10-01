json.extract! admin, :id, :admin_id, :admin_username, :admin_password, :created_at, :updated_at
json.url admin_url(admin, format: :json)
