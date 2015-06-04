class CreateCartadetalles < ActiveRecord::Migration
  def change
    create_table :cartadetalles do |t|
      t.string :estado
      t.references :cartacab, index: true
      t.references :menu, index: true

      t.timestamps
    end
  end
end
