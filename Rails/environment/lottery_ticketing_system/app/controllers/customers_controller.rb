class CustomersController < ApplicationController
  def show
    @customer = current_customer
    @tickets_won = @customer.tickets.where.not(position_won: 0).paginate(page: params[:page], per_page: 8)
    @tickets_not_won = @customer.tickets.where(position_won: 0).paginate(page: params[:page], per_page: 8)
  end
end
