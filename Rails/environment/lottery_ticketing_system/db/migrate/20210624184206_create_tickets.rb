class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.string :type
      t.boolean :is_valid, default: true
      t.datetime :expiration_date
      t.integer :position_won, default: 0
      t.string :ticket_no

      t.timestamps
    end
  end
end
