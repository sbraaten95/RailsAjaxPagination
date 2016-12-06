Rails.application.routes.draw do
  get 'leads/index'
  post 'leads/filter'
  root 'leads#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
