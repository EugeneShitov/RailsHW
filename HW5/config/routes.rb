Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :articles do
        resources :comments do
          get :published, on: :collection
          get :unpublished, on: :collection
          get :status, on: :member
        end
      end
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
