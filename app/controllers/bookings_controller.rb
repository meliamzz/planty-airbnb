class BookingsController < ApplicationController
  def create
    if user_signed_in?
      @booking = Booking.new(booking_params)
      @plant = Plant.find(params[:plant_id])
      @booking.plant = @plant
      @booking.user = current_user
      @booking.status = "pending"
      @booking.save
      # alert js??
      redirect_to bookings_path
    else
      redirect_to new_user_session_path
    end
  end

  def index
    @user = current_user
    @bookings = @user.bookings.sort_by(&:id).reverse
  end

  private

  def booking_params
    params.require(:booking).permit(:pick_up_at, :return_at, :plant)
  end
end
