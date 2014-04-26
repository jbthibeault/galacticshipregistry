class AddShip < ActiveRecord::Migration
  def up
    create_table :ships do |t|
      t.text 'name'
      t.text 'type'
      t.decimal 'weight'
      t.integer 'num_engines'
      t.references :engine
      t.references :planet
    end
  end

  def down
    drop_table :ships
  end
end
