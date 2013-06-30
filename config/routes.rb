Readingapp::Application.routes.draw do
  
  root :to => 'root#home'
  match 'login', :to => 'session#login'
  match 'signup', :to => 'users#new'
  resource :session, :only => [:create, :destroy]
  resource :users
  resources :books
  
end
