class MotorcyclesController < ApplicationController
	def index
		@motorcycles = Motorcycle.all
	end

	def show
		@motorcycle = Motorcycle.find(params[:id])
	end

	def edit
    @motorcycle = Motorcycle.find(params[:id])
  end

  def update
    @motorcycle = Motorcycle.find(params[:id])
    @motorcycle.update(motorcycle_params)
    redirect_to motorcycle_path(@motorcycle)
  end

private
  def motorcyle_params
    params.require(:motorcycle).permit(:name, :motortype, :description, :picture, :price)
  end

end
