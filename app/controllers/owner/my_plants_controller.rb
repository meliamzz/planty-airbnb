class Owner::MyPlantsController < ApplicationController
  def index
    @user = current_user
    @plants = @user.plants.sort_by(&:id).reverse
    @plant = Plant.new
  end
end$
