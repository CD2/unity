Rails.application.routes.draw do

  get 'map/show'

  get 'map/edit'

  get 'map/update'

  get 'map/add_point'

  get 'map/remove_point'

  mount Ckeditor::Engine => '/ckeditor'
  root 'pages#show'

  get 'login' =>  'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
  
  get 'contact_us' => 'enquiries#new'
  get 'contact_us/thanks' => 'enquiries#thanks'

  resources :services, only: [:index, :show]
  resources :blogs, only: [:index, :show]
  resources :enquiries, only: [:new, :create]
  resources :sessions, only: [:new, :create]

  namespace :admin do
    root 'dashboard#index'

    resources :services, except: [:show] do
      collection do
        post 'update_weight'
      end
    end
    resources :blogs, except: [:show]
    resources :pages, except: [:show]
    resources :teams, except: [:show]
    resources :enquiries, only: [:index, :show, :destroy]
    resources :users, except: [:show]
  end

  resources :pages, only: [:show], path: '/'


end
