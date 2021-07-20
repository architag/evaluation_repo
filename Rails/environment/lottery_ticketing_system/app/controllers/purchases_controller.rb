class PurchasesController < ApplicationController
  def index
    @q = current_customer.purchases.ransack(params[:q])
    @q.sorts = 'receipt_no asc' if @q.sorts.empty?
    @purchases = @q.result.includes(:customer, :ticket).paginate(page: params[:page], per_page: 15)
  end
end
