Readingapp::Application.routes.draw do
  
  root :to => 'root#home'
  match 'login', :to => 'session#login'
  match 'signup', :to => 'users#new'
  resource :session, :only => [:create, :destroy]
  resources :users
  resources :books do 
    resources :reviews, :only => [:create, :index, :show]
  end
  resources :reviews, :only => [:delete, :update, :index, :show]
  
end
