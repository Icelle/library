class AddBorrowerToCheckout < ActiveRecord::Migration
  def change
    add_column :checkouts, :borrower, :string
  end
end
