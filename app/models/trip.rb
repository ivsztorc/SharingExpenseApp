class Trip < ActiveRecord::Base
  has_many :users, :through => :trips
  belongs_to :country
  belongs_to :currency
end
