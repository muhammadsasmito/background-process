Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  get "/process", to: "process#index"
  post "/run_process", to: "process#submit_process"
  
  root to: "process#index"

end
