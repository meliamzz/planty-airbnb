class PlantsController < ApplicationController
  before_action :set_plant, only: [ :show ]

  def index
    @plants = Plant.all
  end

  def show
    @booking = Booking.new
  end

  private

  def set_plant
    @plant = Plant.find(params[:id])
  end
end
