class UsersController < ApplicationController

  def show
    @user = User.find_by(id: params[:id])
    @attribute = CustomAttribute.new
  end
end
