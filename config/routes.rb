Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  get "/authors" => "authors#index"
  get "/authors/:id" => "authors#show"
  post "/authors" => "authors#create"
  put "/authors/:id" => "authors#update"
  delete "/authors/:id" => "authors#destroy"

  get "/articles" => "articles#index"
  get "/articles/:id" => "articles#show"
  post "/articles" => "articles#create"
  put "articles/:id" => "articles#update"
  delete "articles/:id" => "articles#destroy"
end
