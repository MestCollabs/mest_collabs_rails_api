Rails.application.routes.draw do





  post 'authenticate', to: 'authentication#authenticate'

  resources :profiles
  resources :feedbacks
  resources :companies
  resources :feeds
  resources :mesters
  resources :posts
  resources :mesters do
    resources :feedbacks
    resources :feeds
    resources :posts
    resources :profiles
  end

  namespace :api do
    namespace :v1 do
      resources :companies
      resources :feedbacks
      resources :posts
      resources :feeds
      resources :profiles
      resources :mesters
      resources :mesters do
        resources :feedbacks
        resources :posts
        resources :feeds
        resources :profiles
      end
    end
    namespace :v2 do
      resources :companies
    end

    namespace :light do
      resources :companies
    end
    
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
