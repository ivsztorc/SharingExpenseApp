class Trip < ActiveRecord::Base
  has_many :users, :through => :usertrips
  has_many :expenses
  has_many :participants
  has_many :usertrips 
  belongs_to :country
  belongs_to :currency
 
 
def total 
  self.expenses.reduce(0) do |sum, expense|
    sum+=expense.amount

  end
end

end
