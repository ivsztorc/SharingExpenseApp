class Trip < ActiveRecord::Base
  has_many :users, :through => :usertrips
  has_many :expenses
  belongs_to :country
  belongs_to :currency
end
