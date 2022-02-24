class Owner::BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.joins(:tour).where(tours: { user: user })
    end
  end
end
