class SetStarsDefault < ActiveRecord::Migration
  def up
    change_column_default :performances, :stars, 0
    
  end

  def down
  end
end