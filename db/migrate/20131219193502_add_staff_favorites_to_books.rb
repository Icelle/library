class AddStaffFavoritesToBooks < ActiveRecord::Migration
  def change
    add_column :books, :staff_favorites, :boolean
  end
end
