Rails.application.routes.draw do
  resources :bills

  root 'bills#home'
end
