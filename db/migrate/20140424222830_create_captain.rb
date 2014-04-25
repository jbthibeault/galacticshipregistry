class CreateCaptain < ActiveRecord::Migration
  def up
    create_table 'captains' do |t|
     t.string 'first_name'
     t.string 'last_name'
     t.date   'date_of_birth'
     t.references :planet
    end
  end

  def down
    drop_table 'captains'
  end
end
