class DeleteCountryAndCurrencyFromTrips < ActiveRecord::Migration
  def change
    remove_column :trips, :country
    remove_column :trips, :currency
  end
end
