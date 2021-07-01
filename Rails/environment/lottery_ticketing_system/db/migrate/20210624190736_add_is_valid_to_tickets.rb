class AddIsValidToTickets < ActiveRecord::Migration[6.1]
  def change
    add_column :tickets, :is_valid, :boolean
  end
end
