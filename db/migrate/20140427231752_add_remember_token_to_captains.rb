class AddRememberTokenToCaptains < ActiveRecord::Migration
  def change
    add_column :captains, :remember_token, :string
    add_index  :captains, :remember_token
  end
end
