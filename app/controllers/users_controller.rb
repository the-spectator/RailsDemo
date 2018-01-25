class UsersController < ApplicationController
  def index
    @list = User.all
  end

  def new
    @user = User.new
  end

  def create
  	@user = User.new(user_params)
  	p "...................."
  	if @user.save
  		redirect_to root_path
  	else
  	  p @user.errors.messages
  		render 'new'
  	end
  end

  def user_params
  	params.require(:user).permit(:name, :last_name, :mobile_number, :password_confirmation, :email, :dob, :password, :gender)
  end
end
