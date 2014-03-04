Facebase::Application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations"}
  resources :users, only: [:index]
  root 'static#index'
  get '/annoying' => 'static#annoying'
  get '/welcome' => 'static#welcome'

end
