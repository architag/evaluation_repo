class CreatePurchases < ActiveRecord::Migration[6.1]
  def change
    create_table :purchases do |t|
      t.integer :customer_id
      t.integer :ticket_id
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
