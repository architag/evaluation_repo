class Purchase < ApplicationRecord
  belongs_to :customer
  belongs_to :ticket
  enum status: [:not_started, :pending, :successful, :failed]
end
