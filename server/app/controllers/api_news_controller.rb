# frozen_string_literal: true

class ApiNewsController < ApplicationController
  def get_news
    limit = nil
    limit = params[:limit] if params[:limit]

    @news = News.all.order('created_at desc').limit(limit)
    render json: @news
  end

  def get_single_news
    @news = News.find(params[:id])
    @news_category = NewsCategory.find(@news.news_categories_id)
    @author = Author.find(@news.authors_id)
    # Creating the JSON response
    response = @news.as_json.merge(author: @author, category: @news_category)

    render json: response
  end

  def get_authors
    limit = nil
    limit = params[:limit] if params[:limit]

    @author = Author.all.order('created_at desc').limit(limit)
    render json: @author
  end

  def get_author
    @author = Author.find(params[:id])
    render json: @author
  end

  def get_news_category
    limit = nil
    limit = params[:limit] if params[:limit]

    @news_category = NewsCategory.all.order('created_at desc').limit(limit)
    render json: @news_category
  end
end
