Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/cars" => "cars#index"
  post "/cars" => "cars#create"
  get "/cars/:id" => "cars#show"
  patch "/cars/:id" => "cars#update"
  delete "/cars/:id" => "cars#destroy"
end
