class MotorcyclesController < ApplicationController

  def new
    @motorcycle = Motorcycle.new
  end

  def create
    @motorcycle = Motorcycle.new(motorcycle_params)
    @motorcycle.save

    redirect_to @motorcycle
  end


private

  def motorcycle_params
    params.require(:motorcycle).permit(:name, :motor_type, :description, :price, :picture)
  end

end
