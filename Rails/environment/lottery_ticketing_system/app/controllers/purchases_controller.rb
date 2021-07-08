class PurchasesController < ApplicationController
  def show
    @purchases = current_customer.purchases.paginate(page: params[:page], per_page: 15)
  end
end
