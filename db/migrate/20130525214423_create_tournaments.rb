class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.integer :player_id
      t.datetime :date
      t.string :result
      t.string :notes

      t.timestamps
    end
  end
end
