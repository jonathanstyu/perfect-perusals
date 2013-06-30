Readingapp::Application.routes.draw do
  
  match 'login', :to => 'session#login'
  match 'signup', :to => 'users#new'
  resource :session, :only => [:create, :destroy]
  resources :users
  resources :books
  
end
