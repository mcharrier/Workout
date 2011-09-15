class User < ActiveRecord::Base
  has_many :workoutsession
end
