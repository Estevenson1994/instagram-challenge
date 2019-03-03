Rails.application.routes.draw do
  get 'photo/index'
  post 'photo/store'
  get 'welcome/index'
  root to: "photo#index"
  devise_for :users  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
