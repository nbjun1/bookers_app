Rails.application.routes.draw do
  root :to => 'homes#top'
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show'
  get 'books/:id/edit' => 'books#edit'
  delete 'books/:id' => 'books#destroy'
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end