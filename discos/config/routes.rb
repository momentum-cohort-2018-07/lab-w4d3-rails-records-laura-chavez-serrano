Rails.application.routes.draw do
  resources :discos

  root 'welcome#index'
end

