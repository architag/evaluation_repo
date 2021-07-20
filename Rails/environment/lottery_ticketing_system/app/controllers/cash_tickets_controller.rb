class CashTicketsController < ApplicationController
  def create
    @ticket = CashTicket.create
    if DateTime.now.between?(Time.parse("12AM UTC"), Time.parse("11:30PM UTC"))  
      if @ticket.save
        current_customer.tickets << @ticket
        flash.now[:notice] = "Your purchase was successful! Your receipt will be emailed to you shortly."
        TicketMailer.with(ticket: @ticket).new_ticket_email.deliver_later
      else
        flash.now[:alert] = "Error Processing the Transaction. Please try again later."
      end
    else
      flash.now[:alert] = "Tickets can only be bought between 12AM and 11:30PM UTC. Please try again later."
    end
    render 'static_pages/buy_tickets'
  end
end
