Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'devise/registrations',
    passwords: 'devise/passwords'
  }
  resources :tops
  resources :homes
  resources :tops
  resources :homes
  resources :mypages
  resources :recodes
  resources :calendars
  resources :todopages
  resources :timetables
  resources :musics
  resource :profile,only: %i[show edit update]
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end
  root "tops#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
