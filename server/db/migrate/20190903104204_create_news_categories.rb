# frozen_string_literal: true

class CreateNewsCategories < ActiveRecord::Migration[5.2]
  def change
    drop_table(:news_categories, if_exists: true)
    create_table :news_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
