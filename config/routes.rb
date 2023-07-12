Rails.application.routes.draw do
  root :to => 'homes#top'
  post 'books' => 'books#create'
  get 'books/:id' => 'books#show'
  get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'

  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end