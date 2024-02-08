# frozen_string_literal: true

Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/about'
  get 'pages/help'
  resources :genres, shallow: true do
    resources :movies
  end
end
