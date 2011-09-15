class Addids < ActiveRecord::Migration
  def self.up
    add_column :workoutsessions, :workout_type_id, :integer
    add_column :workoutsessions, :user_id, :integer
    add_column :workout_types, :workoutsession_id, :integer
  end

  def self.down
  end
end
