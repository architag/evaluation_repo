class TicketJob < ApplicationJob
  def perform
    tickets = Ticket.where(is_valid: true).joins(:customer).where('customers.last_won_on < ? OR customers.last_won_on IS NULL', DateTime.now.utc - 3.months).sample(3)
    puts tickets
    tickets.each.with_index do |ticket, index|
      ticket.update(is_valid: false, position_won: index+1)
      ticket.customer.update_column(:last_won_on, DateTime.now.utc) if index == 0
      WinnerMailer.with(ticket: ticket).prize_email.deliver_later
      puts ticket.ticket_no, index
    end
  end
end
