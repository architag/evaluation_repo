class ChangePrizeTypeToIntInTickets < ActiveRecord::Migration[6.1]
  def change
    remove_column :tickets, :prize_type, :string
    add_column :tickets, :prize_type, :integer
  end
end
