class UsersController < ApplicationController


  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params) 
    if @user.save
      log_in @user
      flash[:success] = "Welcome to RailsTalk"
      redirect_to @user
    else
      render 'new'
    end
  end

  # Prevent injection of additional hash info by specifically permitting data
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  # Restrict param checking
  private :user_params

end
