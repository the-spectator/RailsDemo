class UsersController < ApplicationController
  def index
    @list = User.all
    respond_to do |format|
    	format.html
    	format.json { render :json => @list.to_json }
  	end
  end

  def new
    @user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		redirect_to root_path
  	else
  	  p @user.errors.messages
  		render 'new'
  	end
  end

  def destroy
  	@user = User.find(params[:id])
  	redirect_to root_path if @user.destroy
  end

  def show
  	@user = User.find(params[:id])
  end
  def user_params
  	params.require(:user).permit(:name, :last_name, :mobile_number, :password_confirmation, :email, :dob, :password, :gender)
  end
end
