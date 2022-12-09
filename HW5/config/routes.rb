Rails.application.routes.draw do
  scope module: 'api' do
    scope module: 'v1' do
      resources :articles, :authors do
        resources :comments do
          get :published, on: :collection
          get :unpublished, on: :collection
          get :status, on: :member
          get :latest, on: :collection
        end
        resources :tags, :likes, only: %i[create destroy]
      end
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
