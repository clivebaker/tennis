class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.datetime :date
      t.integer :coach_id
      t.text :notes
      t.integer :location_id
      t.boolean :privte

      t.timestamps
    end
  end
end
