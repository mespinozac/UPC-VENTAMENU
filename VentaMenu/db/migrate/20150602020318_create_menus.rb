class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :nombre
      t.text :descripcion
      t.references :tipoplato, index: true

      t.timestamps
    end
  end
end
