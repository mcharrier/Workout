class Workoutsession < ActiveRecord::Base
  has_one :workout_type
  belongs_to :user
end
