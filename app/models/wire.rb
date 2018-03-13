class Wire < ApplicationRecord
  has_one :runcode
  validates :wire_type, presence: true
end
