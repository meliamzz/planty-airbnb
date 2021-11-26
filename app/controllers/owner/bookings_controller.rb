class Owner::BookingsController < ApplicationController
  def index
    @bookings = Booking.includes(:plant).where(plants: { user: current_user })
  end

  def accept
    @booking = Booking.find(params[:id])
    @booking.status = "accepted"
    @booking.save

    redirect_to owner_bookings_path
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.status = "declined"
    @booking.save

    redirect_to owner_bookings_path
  end
end
