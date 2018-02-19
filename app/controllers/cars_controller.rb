class CarsController < ApplicationController
  def new
    @car = Car.new
  end

  def index
    @cars = Car.all
  end

  def create
    if @car.valid?
      @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def show

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require[:car].permit(:make,:model,:year,:color)
  end 

end
