class AddParticipantIdToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :participant, :integer
  end
end
