class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name
      t.string :country
      t.string :currency

      t.timestamps null: false
    end
  end
end
