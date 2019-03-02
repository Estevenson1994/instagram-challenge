Rails.application.routes.draw do
  get 'photo/index'
  get 'photo/store'
  get 'welcome/index'
  root to: "welcome#index"
  devise_for :users  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
