# frozen_string_literal: true

class ApiNewsController < ApplicationController
  def get_news
    limit = nil
    limit = params[:limit] if params[:limit]

    @news = News.all.order('created_at desc').limit(limit)
    render json: @news
  end

  def get_author
    limit = nil
    limit = params[:limit] if params[:limit]

    @author = Author.all.order('created_at desc').limit(limit)
    render json: @author
  end

  def get_news_category
    limit = nil
    limit = params[:limit] if params[:limit]

    @news_category = NewsCategory.all.order('created_at desc').limit(limit)
    render json: @news_category
  end
end
