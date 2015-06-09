class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :description
      t.date :dateMenu
      t.string :status
      t.float :price
      t.references :local, index: true

      t.timestamps
    end
  end
end
