class Owner::TourPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(user: user)
    end
  end

  def index?
    user_is_owner?
  end

  private

  def user_is_owner?
    user == record.user
  end
end
