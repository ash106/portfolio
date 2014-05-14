Rails.application.routes.draw do
  root 'home#portfolio'
  get 'portfolio', to: 'home#portfolio', as: :portfolio
  get 'about', to: 'home#about', as: :about
  get 'contact', to: 'home#contact', as: :contact
  devise_for :users
  resources :users
  resources :projects
end
