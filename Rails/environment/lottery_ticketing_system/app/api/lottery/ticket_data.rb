module Lottery
  class TicketData < Grape::API
    format :json
    formatter :json, Grape::Formatter::Roar

    namespace :tickets do 
      desc "Find Ticket Details"
      get '/:id' do
        present Ticket.find(params[:id]), with: LotteryRepresenter::TicketRepresenter
      end

    end
  end
end
