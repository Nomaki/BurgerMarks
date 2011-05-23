BurgerMarks::Application.routes.draw do
  devise_for :users, :path_names => { :sign_in => 'login', :sign_out => 'logout' }

  resources :marks

  resources :burgers

  root :to => "marks#index"

end
