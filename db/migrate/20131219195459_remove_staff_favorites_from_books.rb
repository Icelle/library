class RemoveStaffFavoritesFromBooks < ActiveRecord::Migration
  def change
    remove_column :books, :staff_favorites
  end
end
