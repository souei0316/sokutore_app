Rails.application.routes.draw do
  get 'users/show'
  get 'bbs_comments/create'
  get 'bbs_comments/destroy'
  devise_for :users
  root to: 'homes#top'
  resources :bbs_titles, only: [:new, :create, :index, :show, :destroy] do
    resources :bbs_comments, only: [:create, :destroy]
  end
  resources :users, only: [:show,:edit, :update]
  post '/homes/guest_sign_in', to: 'homes#guest_sign_in'
  resources :trainings, only: [:new, :create, :index, :show, :edit, :update]
end