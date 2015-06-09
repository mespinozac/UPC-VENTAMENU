class CreateTypeMenus < ActiveRecord::Migration
  def change
    create_table :type_menus do |t|
      t.string :name

      t.timestamps
    end
  end
end
