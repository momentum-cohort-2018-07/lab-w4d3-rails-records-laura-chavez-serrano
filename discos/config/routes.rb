Rails.application.routes.draw do
  get 'disco/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :discos
  
  root 'disco#index'
end

