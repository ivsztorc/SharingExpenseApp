class AddParticipantNameToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :participant_name, :string
  end
end
