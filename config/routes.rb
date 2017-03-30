Rails.application.routes.draw do

  resources :posts
  post 'authenticate', to: 'authentication#authenticate'

  resources :feeds
  resources :mesters
  resources :mesters do
    resources :feeds
  end

  namespace :api do
    namespace :v1 do
      resources :feeds
      resources :mesters
      resources :mesters do
        resources :feeds
      end
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
