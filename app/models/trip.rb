class Trip < ActiveRecord::Base
  has_many :users, :through => :trips

end
