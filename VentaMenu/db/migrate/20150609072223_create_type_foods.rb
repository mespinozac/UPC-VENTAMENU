class CreateTypeFoods < ActiveRecord::Migration
  def change
    create_table :type_foods do |t|
      t.string :name
      t.references :typeMenu, index: true

      t.timestamps
    end
  end
end
