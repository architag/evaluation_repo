class Ticket < ApplicationRecord
  has_one :image, as: :imageable
  has_one :purchase
  has_one :customer, through: :purchase
  before_create :set_expiration_date, :set_ticket_no, :set_image

  private
  def set_expiration_date
    self.expiration_date =  DateTime.now.utc + 7.days
  end

  def set_image
    self.image = Image.create
    self.image.image_file.attach(io: File.open("app/assets/images/ticket.png"), filename:"ticket_image")
  end

  protected
  def set_ticket_no
    ticket_no = (self.type == "CashTicket") ? "LT-CS-" : "LT-UL-"
    ticket_no += (Ticket.count > 0) ? (Ticket.last.id + 1).to_s : "1"
    self.ticket_no = ticket_no
  end
end
