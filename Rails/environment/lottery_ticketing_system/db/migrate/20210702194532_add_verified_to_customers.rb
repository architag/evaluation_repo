class AddVerifiedToCustomers < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :verified, :boolean, default: false
  end
end
