class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.integer :customer_id
      t.boolean :valid
      t.date :expiration_date
      t.string :prize_type
      t.string :receipt_no

      t.timestamps
    end
  end
end
