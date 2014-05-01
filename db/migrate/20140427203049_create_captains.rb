class CreateCaptains < ActiveRecord::Migration
  def change
    create_table :captains do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.integer :planet_id
      t.string :email
      t.decimal :wallet

      t.timestamps
    end
  end
end
