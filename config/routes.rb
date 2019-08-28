Rails.application.routes.draw do
  get 'users/crea'

  get 'users/update1' , to: 'users#update1'

  get 'users/update' , to: 'users#update'

  get 'posts/index1', to: 'posts#index1'
  
  get 'users/index', to: 'users#index'

  get 'home/tasks', to: 'users#tasks'
  
  get 'users/edit' , to: 'users#edit'
  
  get 'users/crea' , to: 'users#crea'

  root 'static_pages#top'
  get '/signup', to: 'users#new'
  get '/tasks', to: 'users#tasks'

  # ログイン機能
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  

  resources :users do
    member do
      get 'edit_basic_info'
      patch 'update_basic_info'
      get 'attendances/edit_one_month'
      patch 'attendances/update_one_month' # この行が追加対象です。
    end
    resources :attendances, only: :update
  end
end