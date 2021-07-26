module Lottery
  class CustomerData < Grape::API
    format :json
    formatter :json, Grape::Formatter::Roar

    namespace :customers do 
      desc "Find Customer Details"
      get '/:id' do
        present Customer.find(params[:id]), with: LotteryRepresenter::CustomerRepresenter
      end

      desc "Find Customer Tickets"
      get '/:id/tickets' do
        present Customer.find(params[:id]).tickets, with: LotteryRepresenter::TicketsRepresenter
      end
    end
  end
end
