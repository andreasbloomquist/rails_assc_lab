class UsersController < ApplicationController
  def new
  	@user = User.new
  	render :new
  end

  def create
  	new_user = params.require(:user).permit(:email, :password, :password_confirmation)
  	user = User.create(new_user)
  	if user
  		session[:user_id] = user.id
  		redirect_to user_path(user.id)
  	end
  end

  def show
  end
end
