class Expense < ActiveRecord::Base
  belongs_to :usertrip
  mount_uploader :expense_image, ExpenseImageUploader
end
