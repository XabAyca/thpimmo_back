Rails.application.routes.default_url_options[:host] = 'localhost:3000'
Rails.application.routes.draw do


  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: %w[show]
      resources :properties
      resources :locations, only: %i[index]
      resources :categories, only: %i[index]
    end
  end

  devise_for :users,
    defaults: { format: :json },
    path: '',
    path_names: {
      sign_in: 'api/login',
      sign_out: 'api/logout',
      registration: 'api/signup'
    },
    controllers: {
      sessions: 'sessions',
      registrations: 'registrations'
    }
end
