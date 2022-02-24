class TourPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def create?
    user.present?
  end

  private

  def user_is_owner?
    user == record.user
  end

  def user_is_admin?
    user.admin?
  end
end
