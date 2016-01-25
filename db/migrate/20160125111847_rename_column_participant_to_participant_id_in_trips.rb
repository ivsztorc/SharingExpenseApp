class RenameColumnParticipantToParticipantIdInTrips < ActiveRecord::Migration
  def change
    rename_column :trips, :participant, :participant_id
  end
end
