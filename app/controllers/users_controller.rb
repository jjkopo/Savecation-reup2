class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
    @user = User.find(current_user.id)
    if @user.isAdmin
      @users = User.all
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Welcome to Savecation!!"
      redirect_to user_url(@user.id)

    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    if @user.isAdmin
      @users = User.all
    end

    @schedules = @user.schedules
    puts @schedules
  end

  def destroy
    @user=User.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html {redirect_to users_url, notice: 'User was successfully destroyed.'}
      format.json {head :no_content}
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :username, :password, :password_confirmation)
  end
end