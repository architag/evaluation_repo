module Lottery
  class Data < Grape::API
    resource :customer do
      get do
        Customer.all
      end 
    end
  end
end
