class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.string :name
      t.string :classification
      t.integer :weight
      t.integer :num_engines
      t.integer :engine_id
      t.integer :captain_id
      t.integer :planet_id

    end
  end
end
