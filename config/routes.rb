Rails.application.routes.draw do
  resources :companies
  mount_devise_token_auth_for 'User', at: 'auth/user'
  
  #devise_scope :user do
  #  get 'auth/user/sign_in', to: 'devise/sessions#new'
  #end

end
