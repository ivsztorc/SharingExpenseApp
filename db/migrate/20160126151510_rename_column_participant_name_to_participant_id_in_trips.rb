class RenameColumnParticipantNameToParticipantIdInTrips < ActiveRecord::Migration
  def change
    rename_column :trips, :participant_name, :participant_id
  end
end
