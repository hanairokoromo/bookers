Rails.application.routes.draw do
  root :to => 'homes#top'

  get '/top' => 'homes#top'
  get '/books' => 'books#index', as: 'books'
  get 'books/:id' => 'books#show', as: 'show_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
