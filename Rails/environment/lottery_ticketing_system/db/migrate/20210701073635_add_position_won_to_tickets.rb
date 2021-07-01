class AddPositionWonToTickets < ActiveRecord::Migration[6.1]
  def change
    add_column :tickets, :position_won, :integer, default: 0
  end
end
