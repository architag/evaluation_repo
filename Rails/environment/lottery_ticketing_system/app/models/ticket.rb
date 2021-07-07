class Ticket < ApplicationRecord
  has_one :image, as: :imageable
  has_one :purchase
  has_one :customer, through: :purchase
  before_create :set_expiration_date, :set_ticket_no

  private
  def set_expiration_date
    self.expiration_date =  DateTime.now.utc + 7.days
  end

  protected
  def set_ticket_no
    ticket_no = (self.type == "CashTicket") ? "LT-CS-" : "LT-UL-"
    ticket_no += (Ticket.count > 0) ? (Ticket.last.id + 1).to_s : "1"
    self.ticket_no = ticket_no
  end
end
