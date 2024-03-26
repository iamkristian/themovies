json.extract! movie, :id, :title, :poster, :user_id, :omdb_id, :created_at, :updated_at
json.url movie_url(movie, format: :json)
