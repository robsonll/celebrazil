class ChangeProductColumn < ActiveRecord::Migration
  def change
    rename_column :products, :active, :product_active
  end
end
