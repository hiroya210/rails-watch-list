Rails.application.routes.draw do

  root to: "lists#home"
  resources :lists do
    resources :bookmarks, only: [:new, :create]
  end

  delete "/bookmarks/:id", to: "bookmarks#destroy"

end
