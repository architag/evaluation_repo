class Ticket < ApplicationRecord
  has_one :image, as: :imageable
  has_one :purchase
  has_one :customer, through: :purchase
  enum prize_type: [:cash, :utilities]
end
