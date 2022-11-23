class ChangeItemsLocationToAddress < ActiveRecord::Migration[7.0]
  def change
    rename_column :items, :location, :address
  end
end
