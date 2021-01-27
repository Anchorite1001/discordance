Rails.application.routes.draw do
  get 'session/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'users#welcome'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get '/speakers/hosts' => 'speakers#hosts', :as => 'hosts'
  get '/speakers/guests' => 'speakers#guests', :as => 'guests'
  get '/episodes/:id/add' => 'episodes#add', :as => 'add_episode'

  resources :users
  resources :episodes
  resources :speakers, :except => [:index]

end
