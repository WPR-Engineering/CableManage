class Terminal < ApplicationRecord
  belongs_to :punch_block

  validates :terminal_number, presence: true
end
