class PlantsController < ApplicationController
  before_action :set_plant, only: [ :show ]

  def index
    if params[:query].present?
      sql_query = "category ILIKE :query OR variety ILIKE :query OR description ILIKE :query"
      @plants = Plant.where(sql_query, query: "%#{params[:query]}%")
    else
      @plants = Plant.all
    end
    @users = User.all

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

  private

  def set_plant
    @plant = Plant.find(params[:id])
  end
end
