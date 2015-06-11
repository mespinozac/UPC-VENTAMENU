class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :dateOrder
      t.string :status
      t.float :price
      t.references :customer, index: true
      t.references :menu, index: true

      t.timestamps
    end
  end
end
