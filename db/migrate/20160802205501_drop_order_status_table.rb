class DropOrderStatusTable < ActiveRecord::Migration
  def up
    remove_foreign_key :orders, :order_statuses
    drop_table :order_statuses
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
