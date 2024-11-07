Rails.application.routes.draw do
  get 'wishlist', to: 'wishlist#show'
  post 'wishlist/add'
  post 'wishlist/remove'
  resources :products
  resources :users
  get 'dialogs/welcome'
  get 'dialogs/first_meet'
  get 'dialogs/after_first_meet'
  get 'dialogs/ask_about_age'
  get 'dialogs/after_ask_about_age'
  get 'dialogs/date_info'
  #
  root 'welcome#start'
end
