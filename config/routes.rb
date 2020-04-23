Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :games 
      resources :users
      resources :deals
      resources :hands
    end
  end
end
