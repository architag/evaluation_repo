class AddTypeToPurchases < ActiveRecord::Migration[6.1]
  def change
    add_column :purchases, :type, :string
  end
end
