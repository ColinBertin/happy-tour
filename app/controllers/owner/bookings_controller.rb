class Owner::BookingsController < ApplicationController
  def index
    @bookings = policy_scope([:owner, Booking])
  end
end
