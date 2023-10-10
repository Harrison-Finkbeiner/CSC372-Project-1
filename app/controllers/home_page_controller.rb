class HomePageController < ApplicationController
  before_action :set_home_page, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token
    def index
        @recipes = Recipe.all
    end

    def show
        @recipes = Recipe.all
    end
end
