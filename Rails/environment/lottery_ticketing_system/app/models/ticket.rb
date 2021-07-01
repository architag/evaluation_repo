class Ticket < ApplicationRecord
  has_one :ticket_image
  belongs_to :customer
end
