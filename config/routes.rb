Rails.application.routes.draw do
  get 'closest_to_zero_katas/index'
  post 'closest_to_zero_katas/submit_form'
  root 'code_katas#index'
  get 'babysitter_katas/index'
  post 'babysitter_katas/submit_form'
end
