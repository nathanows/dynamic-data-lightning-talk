class CustomAttributesController < ApplicationController

  def create
    user = User.find_by(screen_name: params[:screen_name])
    key = params[:data_key]
    value = params[:data_value]
    user[key.gsub(/\s+/, "_").downcase.to_sym] = value
    user.save
    redirect_to user_path(user.screen_name)
  end
end
