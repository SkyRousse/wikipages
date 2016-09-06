Rails.application.routes.draw do
  resources :categories do
    resources :listings
  end
end
