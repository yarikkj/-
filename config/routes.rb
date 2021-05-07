Rails.application.routes.draw do
  use_doorkeeper do
  	skip_controllers :authorizations, :applications,
    	:authorized_applications
	end
	
  devise_for :users
  resources :items
  root to: 'items#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end