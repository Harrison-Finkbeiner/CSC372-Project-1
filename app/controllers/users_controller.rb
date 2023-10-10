class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token



  # GET /users or /users.json
  def index
  end

  # GET /users/1 or /users/1.json
  def show
  end

  # GET /users/new
  def new

  end

  # POST /users/login
  def login
    @user = User.new(user_params)
    @search = User.find_by(:username => @user.username,
                           :password => @user.password)
    if (@search != nil)
        print "\n\n\n\n\nSIGNED IN!!!\n\n\n\n\n"
        redirect_to home_page_index_path
    else
      flash.notice = "Invalid login."
      redirect_to users_url
    end
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users or /users.json
  def create
    puts "Created a user"
    @search = User.find_by(:username => user_params[:username])
    if (@search == nil)
        @user = User.new
        @user.username =  user_params[:username]
        @user.password = user_params[:password]
        @pic = params[:user][:profilePicture]


        if (@pic != nil)
          File.open(Rails.root.join("public","images", @pic.original_filename), 'wb') do |file|
            file.write(@pic.read)
          end
          @user.profilePicture = (params[:user][:profilePicture].original_filename)
          else
          @user.profilePicture = "public/images/defaultPfp.png"
        end
        @user.save
        redirect_to users_login_path #recipes_path
    else
      flash.notice = "Username is taken."
      redirect_to new_user_path

    end


  end

  private def user_params
    params.require(:require).permit(:username, :password, :profilePicture)
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
