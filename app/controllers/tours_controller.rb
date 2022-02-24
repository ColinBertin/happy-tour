class ToursController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ] # :show if we want to
  def index
    @tours = policy_scope(Tour).order(created_at: :desc)

    @markers = @tours.geocoded.map do |tour|
      { lat: tour.latitude,
        lng: tour.longitude }
    end
  end

  def show
    @tour = Tour.find(params[:id])
    authorize @tour
    @booking = Booking.new
  end

  def new
    @tour = Tour.new
    authorize @tour
  end

  def create
    @tour = Tour.new(tour_params)
    @tour.user = current_user
    authorize @tour
    if @tour.save
      redirect_to tours_path
    else
      render :new
    end
  end

  private

  def tour_params
    params.require(:tour).permit(:name, :address, :price, :content, :photo)
  end
end
