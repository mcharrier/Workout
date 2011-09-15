class CreateWorkoutsessions < ActiveRecord::Migration
  def self.up
    create_table :workoutsessions do |t|
      t.integer :duration

      t.timestamps
    end
  end

  def self.down
    puts 'down hack'
    drop_table :workoutsessions
  end
end
