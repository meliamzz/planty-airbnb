class Owner::MyPlantsController < ApplicationController
    before_action :set_plant, only: [ :show ]

  def index
    @user = current_user


  end

  def show
  end

  def method_name
    
  end

  private

  def set_plant
    @plant = Plant.find(params[:id])
  end
end
