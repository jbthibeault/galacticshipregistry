class CreateEngine < ActiveRecord::Migration
  def up
    create_table :engines do |t|
      t.string :name
      t.text :model_num
      t.text :manufacturer
      t.decimal :tax
    end
  end

  def down
    drop_table :engines
  end
end
