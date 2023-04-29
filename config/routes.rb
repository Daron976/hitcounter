Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "hit_counters#index"

  get 'api/v1/hits', to: 'hit_counters#index'
  post 'api/v1/hits', to: 'hit_counters#create'
  put 'api/v1/hits/:application_name', to: 'hit_counters#update'
  # namespace :api do
  #   namespace :v1 do
  #     resources :hit_counters, only: [:index, :create, :update]
  #   end
  # end
end
