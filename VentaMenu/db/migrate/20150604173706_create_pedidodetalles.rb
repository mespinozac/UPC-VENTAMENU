class CreatePedidodetalles < ActiveRecord::Migration
  def change
    create_table :pedidodetalles do |t|
      t.string :estado
      t.references :pedido, index: true
      t.references :menu, index: true

      t.timestamps
    end
  end
end
