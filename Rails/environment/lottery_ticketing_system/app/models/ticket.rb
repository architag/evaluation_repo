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
    if self.type == "CashTicket"
      ticket = CashTicket.last
      first_no = "TA-CS-1"
    else
      ticket = UtilityTicket.last
      first_no = "TA-UL-1"
    end
    if ticket != nil
      prev_no = ticket.ticket_no
      self.ticket_no = prev_no[0..5] + (prev_no[6..].to_i + 1).to_s
    else
      self.ticket_no = first_no
    end
  end
end
