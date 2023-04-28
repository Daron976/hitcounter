Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get 'api/v1/hits', to: 'hit'
  resources :hit_counters, only: [:index, :create, :update]
end
