class Ticket < ApplicationRecord
  has_one :image, as: :imageable
  belongs_to :customer
  enum prize_type: [:cash, :utilities]
end
