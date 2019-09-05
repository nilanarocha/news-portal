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

  def get_search
    # Showing the text used for search
    @search = params[:search]
    @news_category = params[:news_category]
    sql_complement = []
    # Checking if search was informed via search form
    # if informed, should add to the query
    # .blank? checking if the variable exist
    unless @search.blank?
      # Checking if we have authors for the search
      @authors = Author.where("LOWER(name) LIKE LOWER('%#{@search}%')")
                       .pluck(:id)

      #  If we have authors, the search checks for all the news by author
      sql_authors_complement = if @authors.any?
                                 "OR authors_id IN (#{@authors.join(', ')})"
                               else
                                 ''
                               end
      # searching case insensitive "LOWER(title) LIKE LOWER('%#{@search}%')"
      sql_complement.push(
        "
  (LOWER(title) LIKE LOWER('%#{@search}%')
  OR LOWER(description) LIKE LOWER('%#{@search}%')
  OR LOWER(headline) LIKE LOWER('%#{@search}%')
  #{sql_authors_complement}
  )
  "
      )
    end

    # Checking if news_category was informed via search form
    # if informed, should add to the query
    if !@news_category.blank? && @news_category != 'all'
      # seaching only for the specified property type
      sql_complement.push("news_categories_id=#{NewsCategory.find_by(name: @news_category).id}")
    end

    # Search all properties with the search title
    @news = News.where(sql_complement.join(' AND ').to_s).order('created_at desc')

    render json: @news
  end
end
