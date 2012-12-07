Bedside::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
  resources :pages do
    resources :wishes, :posts, :page_participations, :visits, :comments
  end
end