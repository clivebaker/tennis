class RenamePrivateToType < ActiveRecord::Migration
  def up
    
    rename_column :lessons, :private, :type_id
    change_column :lessons, :type_id, :integer
    add_column :lessons, :points, :integer,  :default => 0
    rename_column :performances, :stars, :points
    
    
  end

  def down
  end
end