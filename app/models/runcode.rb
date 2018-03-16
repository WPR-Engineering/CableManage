class Runcode < ApplicationRecord
  has_many :wires
  has_many :terminals
  has_many :ports
  has_many :devices, through: :port
  has_many :punch_blocks, through: :terminals

  validates :wire, presence: false

end
