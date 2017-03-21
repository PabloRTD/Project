class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :Destination
      t.integer :Population
      t.string :Langauge
      t.boolean :hasWater
      t.boolean :hasSnow
      t.boolean :hasWildlife

      t.timestamps null: false
    end
  end
end
