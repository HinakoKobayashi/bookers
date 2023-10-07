Rails.application.routes.draw do
  resources :books
  root to: "homes#top"
  get 'books/:id' => 'books#show', as: 'book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
