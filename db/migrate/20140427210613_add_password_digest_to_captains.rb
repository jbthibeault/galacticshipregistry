class AddPasswordDigestToCaptains < ActiveRecord::Migration
  def change
    add_column :captains, :password_digest, :string
  end
end
