class AddCurrencyIdToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :currency_id, :integer
  end
end
