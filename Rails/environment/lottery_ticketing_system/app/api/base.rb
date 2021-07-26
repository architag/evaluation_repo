class Base < Grape::API
  # prefix 'api'
  version 'v1', using: :path
  mount Lottery::CustomerData
  mount Lottery::TicketData
end
