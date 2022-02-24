class ToursController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ] # :show if we want to
  def index
    @tours = policy_scope(Tour).order(created_at: :desc)
    if params[:query].present?
      tours = policy_scope(Tour).search_by_address(params[:query]).order(created_at: :desc)
      @tours = tours
    else
      @tours = policy_scope(Tour).order(created_at: :desc)
    end
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
    params.require(:tour).permit(:name, :address, :price, :content, :duration, :start_time, :photo)
  end
end
