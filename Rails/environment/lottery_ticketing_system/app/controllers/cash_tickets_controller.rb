class CashTicketsController < ApplicationController
  def create
    current_customer.tickets << CashTicket.create
    flash.now[:notice] = "Congrats! Your purchase was successful!"
    render 'static_pages/buy_tickets'
  end
end
