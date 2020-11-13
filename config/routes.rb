Rails.application.routes.draw do
  root 'static_pages#top'
  get '/privacy', to: "users#privacy"
  devise_for :users, :controllers => {
    :omniauth_callbacks => 'users/omniauth_callbacks',
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 
  
  devise_scope :user do
    get "user/:id", :to => "users/registrations#detail"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end
  resources :users
  resources :videos
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
