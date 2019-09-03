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
  belongs_to :authors
  belongs_to :news_categories
end
