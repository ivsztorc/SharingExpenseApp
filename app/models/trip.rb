class Trip < ActiveRecord::Base
  has_many :users, :through => :trips
  belongs_to :country_id
  belongs_to :currency_id
end
