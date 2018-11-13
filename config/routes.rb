# frozen_string_literal: true

Rails.application.routes.draw do
  root 'posts#index', as: 'home'

  get 'about' => 'pages#about', as: 'about'
  get 'contacts' => 'pages#contacts', as:'contacts'

  resources :posts do
    resources :comments
  end
  end

