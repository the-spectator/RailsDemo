class AddressesController < ApplicationController
  def show
  	@user = User.find(params[:id])
    @address = Address.find_by(user_id: @user.id)
  end
end
