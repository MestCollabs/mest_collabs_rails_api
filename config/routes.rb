Rails.application.routes.draw do




  post 'authenticate', to: 'authentication#authenticate'

  resources :feedbacks
  resources :companies
  resources :feeds
  resources :mesters
  resources :posts
  resources :mesters do
    resources :feedbacks
    resources :feeds
    resources :posts
  end

  namespace :api do
    namespace :v1 do
      resources :companies
      resources :feedbacks
      resources :posts
      resources :feeds
      resources :mesters
      resources :mesters do
        resources :feedbacks
        resources :posts
        resources :feeds
      end
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
