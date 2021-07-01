class ChangeLastWonOnTypeInCustomers < ActiveRecord::Migration[6.1]
  def change
    remove_column :customers, :last_won_on, :date
    add_column :customers, :last_won_on, :datetime
  end
end
