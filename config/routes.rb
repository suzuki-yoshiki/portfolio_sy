Rails.application.routes.draw do

  root 'static_pages#top'
  get '/privacy', to: "users#privacy"
  devise_for :users, :controllers => {
    :omniauth_callbacks => 'users/omniauth_callbacks',
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 

  get   'contact'         => 'contact#index'     # 入力画面
  post  'contact/confirm' => 'contact#confirm'   # 確認画面
  post  'contact/thanks'  => 'contact#thanks'    # 送信完了画面
  
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
