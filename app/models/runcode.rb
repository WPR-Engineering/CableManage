class Runcode < ApplicationRecord
  belongs_to :wire
  belongs_to :terminal
  belongs_to :device
end
