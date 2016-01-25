class Participant < ActiveRecord::Base
belongs_to :usertrips
belongs_to :trip
has_many :expenses
has_many :trips

def participant_name
end

def participant_email
end

end
