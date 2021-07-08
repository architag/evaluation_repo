class UtilityTicketsController < ApplicationController
  def create
    current_customer.tickets << UtilityTicket.create
    flash.now[:notice] = "Congrats! Your purchase was successful!"
    render 'static_pages/buy_tickets'
  end
end
