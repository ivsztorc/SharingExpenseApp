class Participant < ActiveRecord::Base
belongs_to :trip
has_many :expenses

def participant_name
end

def participant_email
end

end
