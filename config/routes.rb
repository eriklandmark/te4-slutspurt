Rails.application.routes.draw do
  resources :articles
  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/", to: "application#index"
  get "/about", to: "application#about"
end
