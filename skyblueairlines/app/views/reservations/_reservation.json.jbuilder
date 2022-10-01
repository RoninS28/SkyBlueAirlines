json.extract! reservation, :id, :no_of_passengers, :confirmation_number, :amenities, :cost, :created_at, :updated_at
json.url reservation_url(reservation, format: :json)
