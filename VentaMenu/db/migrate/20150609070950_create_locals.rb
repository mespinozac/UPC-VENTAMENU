class CreateLocals < ActiveRecord::Migration
  def change
    create_table :locals do |t|
      t.string :name
      t.string :address
      t.string :telephone
      t.string :celphone
      t.string :mail
      t.references :city, index: true

      t.timestamps
    end
  end
end
