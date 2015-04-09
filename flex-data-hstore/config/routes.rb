Rails.application.routes.draw do

  get 'users/:id', to: 'users#show', as: 'user'
  post 'new_attributes', to: 'custom_attributes#create', as: 'custom_attributes'

end
