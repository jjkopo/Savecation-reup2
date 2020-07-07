Rails.application.routes.draw do

  get 'supported_cities/index'

  get 'attraction_info/index'

  get 'import/index'

  resources :triplaces do
    collection {post :import}
  end
  resources :cities

  resources :schedules

  # cities api routes
  get 'data/cities'
  get 'data/city/:id', to: 'data#city'

  # attraction api routes
  get 'data/attraction/:id', to: 'data#attraction'

  # city page routes
  get 'city_detail/:id', to: 'city_detail#index'

  # attraction page routes
  get 'attraction_detail/:id', to: 'attraction_info#index'

  # generate schedule routes
  get 'generate_schedule/city/:city_id/days/:days', to: 'generate_schedule#no_budget'
  get 'generate_schedule/city/:city_id/days/:days/budget/:budget', to: 'generate_schedule#budget'

  # schedules routes
  get 'schedules/city/:city_id/days/:days/budget/:budget', to: 'schedules#index'
  get 'schedules/:id', to: 'schedules#show'

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'add', to: 'cities#new', as: 'add'
  get 'import', to: 'import#index', as: 'import'

  resources :sessions
  resources :users

  root to: 'creatives#index'
end
