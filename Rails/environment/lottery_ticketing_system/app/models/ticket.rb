class Ticket < ApplicationRecord
  has_one :image, as: :imageable, dependent: :destroy
  has_one :purchase
  has_one :customer, through: :purchase
  after_validation :set_expiration_date, :set_ticket_no
  before_create :set_image
  after_create :set_validity
  # after_commit :set_image

  private def set_expiration_date
    self.expiration_date =  DateTime.now.utc + 7.days
  end

  private def set_image
    self.image = Image.create
    self.image.image_file.attach(io: File.open("app/assets/images/ticket.png"), 
                                filename:"ticket_image", 
                                content_type: "image/png")
  end

  private def set_validity
    self.update_column(:is_valid, true)
  end

  private def set_ticket_no
    ticket_no = (self.type == "CashTicket") ? "LT-CS-" : "LT-UL-"
    ticket_no += (Ticket.count > 0) ? (Ticket.last.id + 1).to_s : "1"
    self.ticket_no = ticket_no
  end
end
