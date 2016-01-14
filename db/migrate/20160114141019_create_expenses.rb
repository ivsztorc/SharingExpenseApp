class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.text :description
      t.integer :amount
      t.integer :usertrip_id
      t.datetime :created_at

      t.timestamps null: false
    end
  end
end
