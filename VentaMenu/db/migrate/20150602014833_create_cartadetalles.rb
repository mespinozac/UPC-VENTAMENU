class CreateCartadetalles < ActiveRecord::Migration
  def change
    create_table :cartadetalles do |t|
      t.string :estado
      t.references :carta, index: true

      t.timestamps
    end
  end
end
