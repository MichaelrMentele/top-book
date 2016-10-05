Rails.application.routes.draw do
  root to: 'books#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :books, only: [:show, :index] do
    member do 
      post 'vote'
    end

    resources :comments, only: [:create] do
      member do 
        post 'vote'
      end
    end
  end

  get '/register', to: 'users#new'
  resources :users, except: [:new, :index]

  resources :categories, only: [:show]

end
