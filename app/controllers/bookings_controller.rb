class BookingsController < ApplicationController
  before_action :set_booking

  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  def create
    @tour = Tour.find(params[:tour_id])
    @booking = Booking.new(booking_params) #need to give it tour
    @booking.tour = @tour
    @booking.user = current_user
    authorize @booking
    if @booking.save
      redirect_to bookings_path
    else
      render tour_path(@tour)
    end
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    if @booking.update(booking_params)
      redirect_to owner_bookings_path
    else
      redirect_to owner_bookings_path #fix later, to right page
    end
  end

    private
    def set_booking
      @booking = Booking.find(params[:id])
      authorize @booking
    end

    def booking_params
      params.require(:booking).permit(:schedule, :confirmation)
    end
end
