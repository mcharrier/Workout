class CreateWorkoutTypes < ActiveRecord::Migration
  def self.up
    drop_table :workout_types
    create_table :workout_types do |t|
      t.string :name
      t.integer :cpm

      t.timestamps
    end
  end

  def self.down
    drop_table :workout_types
  end
end
