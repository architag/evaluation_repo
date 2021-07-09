class UtilityTicketsController < ApplicationController
  def create
    @ticket = UtilityTicket.create
    if @ticket.save
      current_customer.tickets << @ticket
      flash.now[:notice] = "Your purchase was successful! Your receipt will be emailed to you shortly."
      TicketMailer.with(ticket: @ticket).new_ticket_email.deliver_later
    else
      flash.now[:alert] = "Error Processing the Transaction. Please try again later."
    end
    render 'static_pages/buy_tickets'
  end
end
