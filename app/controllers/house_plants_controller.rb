class HousePlantsController < ApplicationController
  def index
    @house_plants = HousePlant.all
    @house_plant = HousePlant.new
  end

  def show
    @house_plant = HousePlant.find(params[:id])
  end

  def create
    @house_plant = HousePlant.new(plant_params)
    @room = @house_plant.room

    if @house_plant.save
      redirect_to house_plants_path
    else
      @house_plants = HousePlant.all
      render :index
    end
  end

  private

  def plant_params
    params.require(:house_plant).permit(:room_id, :plant_type, :height)
  end
end
