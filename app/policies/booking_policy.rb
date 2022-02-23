class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(user: user)
    end
  end

  def new?
    user_is_admin?
  end

  def create?
    user_is_admin?
  end

  def update?
    user_is_admin?
  end

  private

  def user_is_admin?
    user.admin?
  end
end
