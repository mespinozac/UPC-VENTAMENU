class CreateMenuDetails < ActiveRecord::Migration
  def change
    create_table :menu_details do |t|
      t.string :status
      t.references :menu, index: true
      t.references :food, index: true
      t.references :typeMenu, index: true

      t.timestamps
    end
  end
end