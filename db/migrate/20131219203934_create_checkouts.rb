class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.integer :book_id
      t.date :check_out_date
      t.date :return_date

      t.timestamps
    end
  end
end
