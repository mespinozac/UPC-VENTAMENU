class CreateTipomenus < ActiveRecord::Migration
  def change
    create_table :tipomenus do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
