Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/process", to: "process#index"
  post "/run_process", to: "process#submit_process"

end
