Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :bbs_titles, only: [:new, :create, :index, :show, :destroy]
end