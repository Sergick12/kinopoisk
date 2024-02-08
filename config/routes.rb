# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :genres, shallow: true do
    resources :movies
  end
end
