Rails.application.routes.draw do
  resources :books

  namespace :api do
    namespace :v1 do
      get 'books/search' => 'books#search'
    end
  end
  root 'books#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
