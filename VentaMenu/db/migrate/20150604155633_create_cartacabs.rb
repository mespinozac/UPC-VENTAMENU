class CreateCartacabs < ActiveRecord::Migration
  def change
    create_table :cartacabs do |t|
      t.text :descripcion
      t.date :fecha
      t.string :estado
      t.float :precio
      t.references :local, index: true
      
      t.timestamps
    end
  end
end
