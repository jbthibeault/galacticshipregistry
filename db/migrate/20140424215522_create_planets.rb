class CreatePlanets < ActiveRecord::Migration
  def up
    create_table :planets do |t|
      t.string :name
      t.string :system
      t.decimal :tax_rate
    end
  end

  def down
    drop_table :planets
  end
end
