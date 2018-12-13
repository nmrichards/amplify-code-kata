Rails.application.routes.draw do
  root 'code_katas#index'
  get 'babysitter_katas/index'
  post 'babysitter_katas/submit_form'
end
