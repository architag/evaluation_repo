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
      self.ticket_no = "LT-CS-" + self.id.to_s
    else
      self.ticket_no = "LT-UL-" + self.id.to_s
    end
  end
end
