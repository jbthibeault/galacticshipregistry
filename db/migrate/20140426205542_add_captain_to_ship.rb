class AddCaptainToShip < ActiveRecord::Migration
  def change
    change_table :ships do |t|
      t.references :captains
    end
  end
end
