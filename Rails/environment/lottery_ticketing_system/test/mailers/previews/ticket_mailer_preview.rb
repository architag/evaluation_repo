# Preview all emails at http://localhost:3000/rails/mailers/ticket_mailer
class TicketMailerPreview < ActionMailer::Preview
  def new_ticket_email
    ticket = Ticket.last
    TicketMailer.with(ticket: ticket).new_ticket_email
  end
end
