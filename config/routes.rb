Rails.application.routes.draw do
  devise_for :users
  #get 'items/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:"items#index"
end
 