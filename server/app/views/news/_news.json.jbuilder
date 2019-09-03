json.extract! news, :id, :title, :headline, :image, :date, :description, :authors_id, :news_categories_id, :created_at, :updated_at
json.url news_url(news, format: :json)
