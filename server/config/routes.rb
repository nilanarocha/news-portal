# frozen_string_literal: true

Rails.application.routes.draw do
  resources :news
  resources :authors
  resources :news_categories

  # API ENDPOINTS
  get '/api/news' => 'api_news#get_news'
  get '/api/news/:id' => 'api_news#get_single_news'
  get '/api/author' => 'api_news#get_authors'
  get '/api/news-by-author/:id' => 'api_news#get_news_by_author_id'
  get '/api/author/:id' => 'api_news#get_author'
  get '/api/news-category' => 'api_news#get_news_category'
  get '/api/search' => 'api_news#get_search'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
