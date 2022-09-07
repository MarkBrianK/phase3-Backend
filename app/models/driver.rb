class Driver <ActiveRecord::Base
  has_many :vehicle
  has_many :garage, through: :vehicle
end
