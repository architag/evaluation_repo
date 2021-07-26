class TicketMailer < ApplicationMailer
  def new_ticket_email
    @ticket = params[:ticket]
    mail(to: @ticket.customer.email, subject: "Your Lottery Ticket Receipt!")
  end
end
