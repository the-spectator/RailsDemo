Rails.application.routes.draw do
  get 'users/index'
  resources :users do
    resources :addresses
    resources :posts
  end
  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # when single resource then we don't have index as we have single resource we dont want to list it
  # and id is also not there as it is single entity
end
