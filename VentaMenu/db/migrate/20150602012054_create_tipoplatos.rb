class CreateTipoplatos < ActiveRecord::Migration
  def change
    create_table :tipoplatos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
