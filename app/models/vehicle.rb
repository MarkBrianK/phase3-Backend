class Vehicle < ActiveRecord::Base
  belongs_to :garage
  belongs_to :driver
end
