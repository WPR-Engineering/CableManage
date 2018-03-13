class Device < ApplicationRecord
  has_many :port
  has_one :runcode, through: :port
end
