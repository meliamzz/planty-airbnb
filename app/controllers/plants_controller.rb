class PlantsController < ApplicationController
  before_action :set_plant, only: [ :show ]

  def index
    @plants = Plant.all
    @users = User.all
    @plant = Plant.new

    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window: render_to_string(partial: "info_window", locals: { user: user }),
        image_url: helpers.asset_url('sunflower.png')
      }
    end
  end

  def show
    @booking = Booking.new
  end

  def create
    @plant = Plant.new(params_plant)
    @plant.user = current_user
    @plant.save!
    redirect_to owner_my_plants_path
  end

  private

  def set_plant
    @plant = Plant.find(params[:id])
  end

  def params_plant
    params.require(:plant).permit(:title, :variety, :category, :description, :price_per_day, :height, :photo)

  end


end
