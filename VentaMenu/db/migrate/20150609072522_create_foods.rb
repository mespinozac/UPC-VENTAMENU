class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :description
      t.references :type_food
      t.timestamps
    end
  end
end
