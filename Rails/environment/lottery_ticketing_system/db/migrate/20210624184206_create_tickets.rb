class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.boolean :is_valid
      t.datetime :expiration_date
      t.integer :prize_type
      t.integer :position_won, default: 0
      t.string :receipt_no

      t.timestamps
    end
  end
end
