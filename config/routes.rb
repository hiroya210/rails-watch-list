# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'lists#home'
  resources :lists do
    resources :bookmarks, only: %i[new create]
    resources :reviews, only: [:create]
  end

  resources :bookmarks, only: [:destroy]
  resources :movies, only: %i[show index]
end
