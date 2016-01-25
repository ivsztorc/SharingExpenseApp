class AddTripIdToParticipants < ActiveRecord::Migration
  def change
    add_column :participants, :trip_id, :integer
  end
end
