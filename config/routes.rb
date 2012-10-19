Cheminotshack::Application.routes.draw do
  root to: 'users#dashboard'

  resources :issues do
    get :my, on: :collection
    get :arround_me, on: :collection
  end
end
