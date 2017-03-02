	Rails.application.routes.draw do
  get 'user_songs/index'

  devise_for :users
  resources :songs

  resources :user_songs do
  		member do
  			get 'user_list'
  		end
  	end
 

   root 'songs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
