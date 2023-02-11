json.extract! movie, :id, :name, :description, :release_date, :age_linit, :created_at, :updated_at
json.url movie_url(movie, format: :json)
