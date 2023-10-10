class HomePageController < ApplicationController
  skip_before_action :verify_authenticity_token
    def index
        @recipes = Recipe.all
    end

    def show
        @recipes = Recipe.all
    end
end
