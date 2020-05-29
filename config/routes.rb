Rails.application.routes.draw do
  get 'users/home'
  get 'sessions/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#home'
  get    '/user/show/:id',   to: 'users#show', as: :user_show
  get    '/user/list',   to: 'users#list', as: :user_list
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
