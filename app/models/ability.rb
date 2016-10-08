class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    else
      cannot :destroy, Comment
      can :read, :comments, :rating
      can :manage, User, id: user.id
    end
  end

end
