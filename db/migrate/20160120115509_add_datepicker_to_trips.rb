class AddDatepickerToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :datepicker, :datetime
  end
end
