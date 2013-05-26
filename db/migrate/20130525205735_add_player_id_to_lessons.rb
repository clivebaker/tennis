class AddPlayerIdToLessons < ActiveRecord::Migration
  def change
    add_column :lessons, :player_id, :integer
  end
end
