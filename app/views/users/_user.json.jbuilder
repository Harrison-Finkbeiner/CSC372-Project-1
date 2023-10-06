json.extract! user, :id, :username, :password, :profilePicture, :likedRecipes, :createdRecipes, :created_at, :updated_at
json.url user_url(user, format: :json)
