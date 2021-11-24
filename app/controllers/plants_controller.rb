class PlantsController < ApplicationController
  before_action :set_plant, only: [ :show ]

  def index
    @plants = Plant.all
    @users = User.all

    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window: render_to_string(partial: "info_window", locals: { user: user })
      }
    end
  end

  def show
  end

  private

  def set_plant
    @plant = Plant.find(params[:id])
  end
end
