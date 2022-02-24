class ToursController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ] # :show if we want to
  def index
    if params[:query].present?
      tours = Tour.search_by_address(params[:query])
      @tours = policy_scope(tours).order(created_at: :desc)
    else
      @tours = Tour.all
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
