class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(user: user)
    end
  end

  def create?
    user.present? && !user_is_tour_owner?
  end

  def update?
    user_is_guest? || user_is_tour_owner?
  end

  private

  def user_is_admin?
    user.admin?
  end

  def user_is_guest?
    user == record.user
  end

  def user_is_tour_owner?
    user == record.tour.user
  end
end
