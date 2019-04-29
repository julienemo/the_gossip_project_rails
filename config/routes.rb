Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get root "home#show"
  get "/pages/:page" => "pages#show"
  post "/welcome/", to: "welcome#index_post"
  get "/welcome/", to: "welcome#index_post"
  get '/gossip/:id', to: 'gossip#each'
end
