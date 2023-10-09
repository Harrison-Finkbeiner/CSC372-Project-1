class HomePageController < ApplicationController
    def index
        @recipes = Recipe.all
    end

end
