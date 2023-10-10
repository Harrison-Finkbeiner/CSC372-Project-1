class Recipe
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :ingredients, type: String
  field :steps, type: String
  field :creator, type: String



end
