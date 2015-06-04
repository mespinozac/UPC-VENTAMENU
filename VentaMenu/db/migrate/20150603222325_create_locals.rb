class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.string :nombre
      t.text :direccion
      t.string :telefono
      t.string :celular
      t.references :ciudad, index: true

      t.timestamps
    end
  end
end
