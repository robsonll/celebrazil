class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.text :rmk
      t.float :sub_total
      t.float :tax
      t.float :total
      t.references :user, index: true, foreign_key: true
      t.references :order_status, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
