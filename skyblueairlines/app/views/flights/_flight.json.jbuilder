json.extract! flight, :id, :name, :flight_id, :manufacturer, :originCity, :string, :destinationCity, :capacity, :integer, :status, :class, :created_at, :updated_at
json.url flight_url(flight, format: :json)
