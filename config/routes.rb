Rails.application.routes.draw do
  root to: 'books#index'

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

end
