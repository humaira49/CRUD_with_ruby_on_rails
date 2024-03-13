Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  # Defines the root path route ("/")
  # root "posts#index"
  # config/routes.rb
  root 'welcome#index'
  get "/edit/:id", to: "welcome#show"
  resources :welcome
 #delete get 'welcome/:id', to: 'welcome#destroy'
  post '/users', to: 'welcome#create'
  get '/success', to: 'welcome#index'
 post '/edit', to: 'welcome#update'
 post '/show', to: 'welcome#show'
 #get '/destroy', to: 'welcome#destroy'
 #get 'destroy/:id', to: 'welcome#destroy'
 get 'welcome/:id', to: 'welcome#show'
 get 'welcome/:id/edit', to: 'welcome#show'
 get 'welcome/:id/destroy', to: 'welcome#destroy', as: 'delete_welcome'
# config/routes.rb
#post '/edit/:id/edit', to: 'welcome#update' 
end
