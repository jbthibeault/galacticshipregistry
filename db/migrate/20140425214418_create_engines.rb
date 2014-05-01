class CreateEngines < ActiveRecord::Migration
  def up
    create_table :engines do |t|
      t.string :name
      t.integer :model_num
      t.string :manufacturer
      t.decimal :tax
    end
  end

  def down
    drop_table :engines
  end
end
