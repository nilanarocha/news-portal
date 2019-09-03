# frozen_string_literal: true

class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    drop_table(:authors, if_exists: true)
    create_table :authors do |t|
      t.string :name
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
