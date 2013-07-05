Readingapp::Application.routes.draw do
  
  root :to => 'root#home'
  match 'login', :to => 'sessions#login'
  match 'signup', :to => 'users#new'
  match 'mybooks', :to => 'root#my_books'
  match 'search', :to => 'root#search'
  match 'feed', :to => 'users#feed'
  
  resource :sessions, :only => [:create, :destroy]
  resources :users do 
    post 'friend'
    delete 'unfriend'
    get 'feed'
  end
  resources :books, except: [:index] do 
    resources :reviews, :only => [:create, :index]
  end
  resources :reviews, :only => [:delete, :update, :index, :show] do 
    resources :comments, :only => [:index, :create, :delete]
  end
  resources :taggings, :except => [:new]
  
end
