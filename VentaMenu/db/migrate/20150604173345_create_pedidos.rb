class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.date :fecha
      t.string :horapedido
      t.string :horaentrega
      t.string :estado
      t.float :montopedido
      t.references :cartacab, index: true

      t.timestamps
    end
  end
end
