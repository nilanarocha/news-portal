# frozen_string_literal: true

class CreateNews < ActiveRecord::Migration[5.2]
  def change
    drop_table(:news, if_exists: true)
    create_table :news do |t|
      t.string :title
      t.string :headline
      t.string :image
      t.date :date
      t.text :description
      t.references :authors, foreign_key: true
      t.references :news_categories, foreign_key: true

      t.timestamps
    end
  end
end
