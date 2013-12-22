class CreateCategorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
      t.references :book, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end
