class User
  include Mongoid::Document
  include Mongoid::Timestamps
  field :username, type: String
  field :password, type: String
  field :profilePicture, type: String
  field :likedRecipes, type: String
  field :createdRecipes, type: String
end
