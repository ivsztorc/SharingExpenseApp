class User < ActiveRecord::Base

  has_many :trips, :through => :usertrip
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
  has_many :expenses
  # has_many :feedbacks, :through => :passenger

  before_create :set_default_role
  
  def human_readable_date
    journey_date.strftime('%A %B %d %Y')
  end

  def human_readable_time
    starting_time.strftime('%A %B %d %Y, %H:%M')
  end

  
  def role?(role_to_compare_to)
    role_to_compare_to.to_s == self.role.to_s
  end
end

def set_default_role
  self.role = "user" unless role
end 

def role (role_to_compare)
  self.role.to_s == role_to_compare.to_s
end

def mailboxer_name
  self.name
end

def mailboxer_email(object)

 if object.class==Mailboxer::Notification
   return nil
 else
   email
 end
end