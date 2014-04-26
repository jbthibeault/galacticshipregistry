class RenameShipType < ActiveRecord::Migration
  def up
    remove_column(:ships, :type)
    add_column(:ships, :classification, :text)
  end

  def down
    remove_column(:ships, :classification)
    add_column(:ships, :type, :text)
  end
end
