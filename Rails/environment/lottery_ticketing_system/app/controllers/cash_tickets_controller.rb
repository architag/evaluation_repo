class CashTicketsController < ApplicationController
  def create
    if !current_customer.verified?
      flash[:alert] = "Only Verified Customers can buy a Lottery Ticket"
      redirect_to buy_tickets_path
    else
      current_customer.tickets << CashTicket.create
      flash.now[:notice] = "Congrats! Your purchase was successful!"
      render 'static_pages/home'
    end
  end
end
