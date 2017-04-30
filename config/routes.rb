Rails.application.routes.draw do

  devise_for :users
  root 'welcome#index', as: :authenticated_root
end
