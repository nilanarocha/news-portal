# frozen_string_literal: true

# == Schema Information
#
# Table name: news
#
#  id                 :bigint           not null, primary key
#  title              :string
#  headline           :string
#  image              :string
#  date               :date
#  description        :text
#  authors_id         :bigint
#  news_categories_id :bigint
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class News < ApplicationRecord
  # has_many :author
  # has_many :news_category
  belongs_to :author, class_name: 'Author', optional: true
  belongs_to :news_category, class_name: 'NewsCategory', optional: true
end
