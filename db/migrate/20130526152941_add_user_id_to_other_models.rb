class AddUserIdToOtherModels < ActiveRecord::Migration
  def change
    
    
    add_column :coaches, :user_id, :integer
    add_column :locations, :user_id, :integer
    add_column :types, :user_id, :integer
    
    
  end
end