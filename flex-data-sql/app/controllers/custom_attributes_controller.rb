class CustomAttributesController < ApplicationController

  def create
    user = User.find_by(id: params[:custom_attribute][:user_id])
    new_attr = CustomAttribute.create(
      data_key: params[:custom_attribute][:data_key],
      data_value: params[:custom_attribute][:data_value]
    )
    user.custom_attributes << new_attr
    redirect_to user_path(user)
  end
end
