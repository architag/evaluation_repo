class ChangeExpirationDateInTickets < ActiveRecord::Migration[6.1]
  def change
    remove_column :tickets, :expiration_date, :date
    add_column :tickets, :expiration_date, :datetime
  end
end
