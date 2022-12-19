Rails.application.routes.draw do
  scope module: 'api' do
    scope module: 'v1' do
      resources :articles, :authors do
        resources :comments do
          collection do
            get :published
            get :unpublished
            get :latest
          end
          get :status, on: :member
        end
        resources :tags, :likes
      end
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
