Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :comments do
        get :change_status, to: 'comments#status', on: :member
        get :unpublished, on: :collection
        get :published, on: :collection

      end
      resources :articles do
        get :published, on: :member
        get :unpublished, on: :member
      end
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
