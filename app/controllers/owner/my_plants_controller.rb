class Owner::MyPlantsController < ApplicationController
  def index
    @user = current_user
    @plants = @user.plants
    @plant = Plant.new
  end
end
