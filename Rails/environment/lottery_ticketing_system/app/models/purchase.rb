class Purchase < ApplicationRecord
  belongs_to :customer
  belongs_to :ticket
  enum status: [:not_started, :pending, :successful, :failed]
  validates :ticket_id, uniqueness: true
  before_create :set_receipt_no
  after_save :update_status

  private
  def set_receipt_no
    receipt_no = (self.ticket.type == "CashTicket") ? "TRS-CS-" : "TRS-UL-"
    receipt_no += (Purchase.count > 0) ? (Purchase.last.id + 1).to_s : "1"
    self.receipt_no = receipt_no
  end

  def update_status
    # PG Returns if Transaction is Failed or Successful
    self.update_column(:status, 2)
  end
end
