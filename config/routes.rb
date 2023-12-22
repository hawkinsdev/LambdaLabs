Rails.application.routes.draw do
  resources :autors, only: [:index, :show], defaults: { format: 'json' }
  resources :books, only: [:index, :show], defaults: { format: 'json'}
end
