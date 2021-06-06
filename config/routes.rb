Rails.application.routes.draw do
  #devise_for :players
  devise_for :players, :controllers => { :registrations => 'players/registrations',:sessions => 'players/sessions' }
  
	root 'homes#index'
  resources :games
  resources :players
  resources :leader_boards, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
