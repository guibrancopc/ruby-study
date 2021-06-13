Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # root to: "articles#index"
  get "/" => redirect('/articles')

  # resources :articles # does de same of both lines below
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"

  resources :articles do
    resources :comments
  end
end
