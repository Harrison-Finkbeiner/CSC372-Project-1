class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token



  # GET /users or /users.json
  def index
    puts "Made it to index"
  end

  # GET /users/1 or /users/1.json
  def show
  end

  # GET /users/new
  def new

  end

  # POST /users/login
  def login
    puts "Trying to login"
    @user = User.new(user_params)
    puts @user.username
    @search = User.where(name: params[:username], password: params[:password])
    puts @search.name
    if (@search != nil)
        redirect_to recipes_url
    end
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
    @user = User.new(user_params)

    @user.save
    redirect_to users_url #recipes_path
  end

  private def user_params
    params.require(:require).permit(:username, :password)
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to user_url(@user), notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:username, :password)
    end
end
