json.extract! review, :id, :reviewer, :recommend, :explanation, :restaurant_id_id, :created_at, :updated_at
json.url review_url(review, format: :json)