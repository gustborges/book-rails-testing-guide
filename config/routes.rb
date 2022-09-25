Rails.application.routes.draw do
  resources :cities
  root "cities#index"
  get "hello_world/index"
end
