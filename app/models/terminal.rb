class Terminal < ApplicationRecord
  belongs_to :punch_block
  has_one :runcode

  validates :terminal_number, presence: true
end
