class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.text :ingredients
      t.float :unit_price
      t.integer :min_portion
      t.boolean :active
      t.string :image_url
      t.references :portion, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
