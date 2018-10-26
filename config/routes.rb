Rails.application.routes.draw do
  devise_for :users
  root 'profile#index'
  get 'avatar/edit', to: 'avatars#edit', as: 'edit_avatar'
  put 'avatar', to: 'avatars#update', as: 'avatar'
  patch 'avatar', to: 'avatars#update'
  # resources :avatars, only: [:edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
