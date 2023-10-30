class RegistrationsController < ApplicationController

  def new
  end

  def create
    
    
    @user = User.new(user_params)
    valid_user = User.find_by(email: params[:user][:email])
    if @user.user_exists?(@user) && @user.authenticate(@user.password) && @user.save!
      session[:user] = @user
      redirect_to @user
    else
      flash[:notice] = "Invalid Login"
      redirect_to new_registration_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :phone, :password, :confirm_password)
  end

end
