BurgerMarks::Application.routes.draw do
  get "content/index"

  get "content/about"

  devise_for :users, :path_names => { :sign_in => 'login', :sign_out => 'logout' }

  resources :marks

  resources :burgers

  root :to => "content#index"

end
