class Port < ApplicationRecord
  has_one :runcode
  has_one :device
end
