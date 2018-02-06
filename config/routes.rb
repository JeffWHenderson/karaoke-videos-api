Rails.application.routes.draw do
  namespace :api do
    resources :videos
  end
end
