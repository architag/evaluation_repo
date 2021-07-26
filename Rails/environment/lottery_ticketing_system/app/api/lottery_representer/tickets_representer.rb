module LotteryRepresenter
  module TicketsRepresenter
    require 'roar/representer'
    require 'roar/json/hal'

    include Roar::JSON::HAL
    include Roar::Hypermedia
    include Grape::Roar::Representer

    collection :entries, extend: TicketRepresenter, as: :tickets
  end
end
