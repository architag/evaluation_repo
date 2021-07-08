class CustomersController < ApplicationController
  def show
    @customer = current_customer
    @tickets = @customer.tickets.paginate(page: params[:page], per_page: 8)
  end
end
