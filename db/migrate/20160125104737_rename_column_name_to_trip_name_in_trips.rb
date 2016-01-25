class RenameColumnNameToTripNameInTrips < ActiveRecord::Migration
  def change
    rename_column :trips, :name, :tripname
  end
end
