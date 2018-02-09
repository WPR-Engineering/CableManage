class Runcode < ApplicationRecord
  has_many :wires
  has_many :terminals
  has_many :devices
  has_many :ports
end
