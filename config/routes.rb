Rails.application.routes.draw do
  resources :portfolios
   get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'


  resources :blogs do
    member do
      get :toggle_status
    end
  end

   get 'blogs/*missing', to: 'blogs#missing'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home', to: 'pages#home'
  root to: 'pages#home'
end
