Rails.application.routes.draw do
  resources :oenologist_wines
  resources :oenologist_magazines
  resources :magazines
  resources :oenologists
  devise_for :users
  resources :wine_strains
  resources :strains
  resources :wines
  root 'wines#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
