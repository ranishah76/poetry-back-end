Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :poems, only: [:index]
      resources :authors, only: [:index]
    end
  end
end
