class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :url
      t.string :title
      t.string :foreign_titlefirst_category
      t.string :second_category
      t.string :authors
      t.string :main_author
      t.string :publisher
      t.string :published_at
      t.string :language
      t.string :size
      t.string :last_page
      t.string :isbn10
      t.string :isbn13
      t.string :price
      t.string :reviewed
      t.string :description
      t.string :index_page
      t.string :series

      t.timestamps
    end
  end
end
