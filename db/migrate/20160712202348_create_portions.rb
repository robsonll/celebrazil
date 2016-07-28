class CreatePortions < ActiveRecord::Migration
  def change
    create_table :portions do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
