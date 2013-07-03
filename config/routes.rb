Readingapp::Application.routes.draw do
  
  root :to => 'root#home'
  match 'login', :to => 'sessions#login'
  match 'signup', :to => 'users#new'
  match 'mybooks', :to => 'root#my_books'
  match 'search', :to => 'root#search'
  resource :sessions, :only => [:create, :destroy]
  resources :users
  resources :books, except: [:index] do 
    resources :reviews, :only => [:create, :index]
  end
  resources :reviews, :only => [:delete, :update, :index, :show] do 
    resources :comments, :only => [:index, :create, :delete]
  end
  resources :taggings
  
end
