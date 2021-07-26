class AddAgeToCustomers < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :age, :integer
  end
end
