class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :url
      t.string :category
      t.string :image
      t.string :name
      t.integer :price
      t.integer :review_count
      t.integer :category_rank
      t.timestamps null: false
    end
  end
end
