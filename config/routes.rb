Rails.application.routes.draw do
  root  'home#index'
  get   'edit'    => 'home#edit'
  get   'login'   => 'sessions#new'
  post  'login'   => 'sessions#create'
  get  'signup'  => 'signup#create'
  post  'signup'  => 'signup#new'
  delete 'logout'  => 'sessions#destroy'

  resources :profiles , only: [:update]
  resources :educations , only: [:new]
end 

