class CreateCaptain < ActiveRecord::Migration
  def up
    create_table 'captains' do |t|
      
    end
  end

  def down
    drop_table 'captains'
  end
end
