class Purchase < ApplicationRecord
  belongs_to :customer
  belongs_to :ticket
  enum status: [:not_started, :pending, :successful, :failed]
  validates :ticket_id, uniqueness: true
end
