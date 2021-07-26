module LotteryRepresenter
  module CustomerRepresenter
    require 'roar/representer'
    require 'roar/json'

    include Roar::JSON
    include Roar::Hypermedia
    include Grape::Roar::Representer

    property :name
    property :email
    property :age
    property :last_won_on
  end
end
