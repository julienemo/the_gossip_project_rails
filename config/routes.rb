Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get root "home#show"
  get "/pages/:page" => "pages#show"
  get "/welcome/:user" => "welcome#index"
end
