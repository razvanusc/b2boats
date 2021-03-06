Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:show, :edit, :update, :destroy] do
    resources :boats, only: [:index]
  end

  resources :boats do
    resources :reviews
    resources :bookings, only: [:create, :new]
  end

  resources :bookings, only: [:index, :show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  patch "confirm_booking/:id", to: "bookings#confirm", as: :confirm
end
