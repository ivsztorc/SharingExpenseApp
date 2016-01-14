class CreateUsertrips < ActiveRecord::Migration
  def change
    create_table :usertrips do |t|
      t.integer :user_id
      t.integer :trip_id

      t.timestamps null: false
    end
  end
end
