class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :orders
end

class Ability
  include CanCan::Ability

  def intialize(user)
    user ||= User.new
    if user.admin?
      can :manage, :all
    else
      cannot :destroy, Comment
      can :read, :all
    end
  end
end