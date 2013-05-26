class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.integer :discipline_id
      t.integer :lesson_id
      t.integer :stars
      t.text :notes

      t.timestamps
    end
  end
end
