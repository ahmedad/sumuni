Rails.application.routes.draw do
	resources :posts
	resources :contacts

	root "posts#index"
end
