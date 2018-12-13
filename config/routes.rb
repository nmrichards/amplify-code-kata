Rails.application.routes.draw do
  root 'code_katas#index'

  resources :code_katas
end
