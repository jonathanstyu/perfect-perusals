Readingapp::Application.routes.draw do
  
  match 'login', :to => 'session#login'
  match 'signup', :to => 'users#new'
  resource :session
  resources :users
  resources :books
  
end
