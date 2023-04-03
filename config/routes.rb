Rails.application.routes.draw do
  get 'bbs_comments/create'
  get 'bbs_comments/destroy'
  devise_for :users
  root to: 'homes#top'
  resources :bbs_titles, only: [:new, :create, :index, :show, :destroy] do
    resources :bbs_comments, only: [:create, :destroy]
  end
end