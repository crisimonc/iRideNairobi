class MotorcyclesController < ApplicationController

	def index
		@motorcycles = Motorcycle.all
	end

	def show
		@motorcycle = Motorcycle.find(params[:id])
	end

  def new
    @motorcycle = Motorcycle.new
  end

  def create
    @motorcycle = Motorcycle.new(motorcycle_params)
    @motorcycle.save

    redirect_to @motorcycle
  end

  def destroy
    @motorcycle = Motorcycle.find(params[:id])
    @motorcycle.destroy

    redirect_to motorcycles_url
  end


private

  def motorcycle_params
    params.require(:motorcycle).permit(:name, :motor_type, :description, :price, :picture)
  end
end
