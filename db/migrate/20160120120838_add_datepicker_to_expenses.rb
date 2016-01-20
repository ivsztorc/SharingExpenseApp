class AddDatepickerToExpenses < ActiveRecord::Migration
  def change
    add_column :expenses, :datepicker, :datetime
  end
end
