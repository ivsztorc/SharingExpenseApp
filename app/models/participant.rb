class Participant < ActiveRecord::Base
belongs_to :trips
has_many :expenses


end
