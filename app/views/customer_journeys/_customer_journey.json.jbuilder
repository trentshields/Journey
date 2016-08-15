json.extract! customer_journey, :id, :name, :description, :user_id, :created_at, :updated_at
json.url customer_journey_url(customer_journey, format: :json)