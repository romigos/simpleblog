# frozen_string_literal: true

Rails.application.routes.draw do
  root 'posts#index', as: 'home'

  get 'about' => 'pages#about'
  get 'contacts' => 'pages#contacts'

  resources :posts
end
