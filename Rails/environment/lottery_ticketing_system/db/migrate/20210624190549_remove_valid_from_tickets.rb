class RemoveValidFromTickets < ActiveRecord::Migration[6.1]
  def change
    remove_column :tickets, :valid, :boolean
  end
end
