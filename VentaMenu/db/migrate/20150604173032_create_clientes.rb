class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :apellidos
      t.string :celular
      t.string :correo
      t.string :empresa
      t.string :direccionenvio

      t.timestamps
    end
  end
end
