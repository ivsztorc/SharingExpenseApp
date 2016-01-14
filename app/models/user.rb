class User < ActiveRecord::Base

  has_many :expenses, :through => :trips
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
  has_many :trips
  has_many :expenses
  # has_many :feedbacks, :through => :passenger
  has_many :given_feedback, class_name: 'Feedback'

  before_create :set_default_role


  def role?(role_to_compare_to)
    role_to_compare_to.to_s == self.role.to_s
  end
end

def set_default_role
  self.role = "user" unless role
end 


def role?(role_to_compare)
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