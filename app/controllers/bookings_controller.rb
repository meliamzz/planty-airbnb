class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.save

    redirect_to plants_path
  end

  private

  def booking_params
    params.require(:booking).permit(:pick_up_at, :return_at)
  end
end
