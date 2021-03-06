Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :authors, only: [:index, :show]
    end
  end

  root   to: "authors#index"

  resources :authors
  resources :books
end
