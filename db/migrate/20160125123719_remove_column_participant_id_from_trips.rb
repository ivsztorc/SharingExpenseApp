class RemoveColumnParticipantIdFromTrips < ActiveRecord::Migration
  def change
    remove_column :trips :participant_id
  end
end
