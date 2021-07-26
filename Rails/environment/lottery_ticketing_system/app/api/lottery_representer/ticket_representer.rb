module LotteryRepresenter
  module TicketRepresenter
    require 'roar/representer'
    require 'roar/json'

    include Roar::JSON
    include Roar::Hypermedia
    include Grape::Roar::Representer

    property :ticket_no
    property :type
    property :is_valid
    property :expiration_date
    property :position_won
  end
end
