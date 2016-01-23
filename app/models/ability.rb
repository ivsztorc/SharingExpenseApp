class Ability
  include CanCan::Ability

  def initialize(user)

   alias_action :create, :read, :update, :destroy, :to => :crud

   user ||= User.new
   if user.role? :admin
    can :manage, :all
  elsif user.role? :user

    can :sign_in
    can :read, :all
    can :create, Trip
  else
    can :sign_in 
  end
end
end