# frozen_string_literal: true

Rails.application.routes.draw do
  resources :genres, shallow: true do
    resources :movies
  end
end
