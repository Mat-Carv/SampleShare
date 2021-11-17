class AddCompleteToPurchases < ActiveRecord::Migration[6.1]
  def change
    add_column :purchases, :complete, :boolean
  end
end
