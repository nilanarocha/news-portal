Rails.application.routes.draw do
  resources :news
  resources :authors
  resources :news_categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
