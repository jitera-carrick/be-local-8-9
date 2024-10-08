require 'sidekiq/web'
Rails.application.routes.draw do
  resources :houses
  resources :animals
  resources :cars
  resources :categories
  resources :products
  resources :creams
  resources :simples
  resources :stores
  resources :books
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  get '/health' => 'pages#health_check'
  get 'api-docs/v1/swagger.yaml' => 'swagger#yaml'
end