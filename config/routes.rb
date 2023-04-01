# frozen_string_literal: true

Rails.application.routes.draw do
  resources :genres
  resources :movies, shallow: true do
    resources :genres
  end
end
