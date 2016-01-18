class Usertrip < ActiveRecord::Base
  has_many :expenses, :through => :usertrip

end
