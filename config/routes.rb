Rails.application.routes.draw do
  devise_for :users
  root "pages#index"

  resources :widgets, only: [:show, :index]
  resources :widget_ratings, only: [:create]

  ####
  # Custom routes start here
  #
  # For each new custom route:
  #
  # * Be sure you have the canonical route declared above
  # * Add the new custom route below the existing ones
  # * Document why it's needed
  # * Explain anything else non-standard

  # Used in podcast ads for the 'amazing' campaign
  get "/amazing", to: redirect("/widgets")

  resources :quotes
end
