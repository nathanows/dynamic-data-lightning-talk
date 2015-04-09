class CustomAttributesController < ApplicationController

  def create
    user = User.find_by(id: params[:user_id])
    key = params[:data_key]
    value = params[:data_value]
    user.custom_attributes[key] = value
    user.save
    redirect_to user_path(user)
  end
end
