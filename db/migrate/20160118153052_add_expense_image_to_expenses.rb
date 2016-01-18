class AddExpenseImageToExpenses < ActiveRecord::Migration
  def change
    add_column :expenses, :expense_image, :text
  end
end
