Rails.application.routes.draw do
  resources :jogos
  resources :administradores

root to: "jogos#index"
  
  get '/login', to: 'login#index'
  post '/login', to: 'login#logar'
  get '/sair', to: 'login#deslogar'
end
