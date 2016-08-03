class AddDirectionsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :directions, :text
  end
end
