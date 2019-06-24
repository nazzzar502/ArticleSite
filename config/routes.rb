Rails.application.routes.draw do
  resources :tests
  get 'admin/index'


  resources :sessions, only: [:new, :create, :destroy]

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end



  get '/userarticles', to: 'articles#userarticles', as: 'userarticles'
  resources :articles do
    resources :comments
  end
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'articles#index'


  #mount Ckeditor::Engine => '/ckeditor'
end
