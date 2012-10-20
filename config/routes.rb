Cheminotshack::Application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  root to: 'users#dashboard'

  resources :issues do
    get :my, on: :collection
    get :arround_me, on: :collection
  end
  resources :issue_steps

  match '/update_location', to: 'users#update_location', via: :post
end
