Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :topics do
  	member do
  		post :comments #topics對應多個comments, 應為複數 ！
  	end
  end
  root "topics#index"
end
