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
    respond_to do |format|
      if @user.save
        format.html { redirect_to root_path}
        format.json { render :json => User.last.to_json }
      else
        format.html { render 'new' }
        format.json { render :json => @user.errors.to_json }
      end
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      respond_to do |format|
        format.html
        format.json {render :json => @user.to_json}
      end
    end
  end

  def destroy
  	@user = User.find(params[:id])
    respond_to do |format|
      if @user.destroy
        format.html {redirect_to root_path}
        format.json {render :json => "Deleted successfully".to_json}
      end
    end
  	# redirect_to root_path if @user.destroy
  end

  def show
  	@user = User.find(params[:id])
  end

  def user_params
  	params.require(:user).permit(:name, :last_name, :mobile_number, :password_confirmation, :email, :dob, :password, :gender)
  end
end
