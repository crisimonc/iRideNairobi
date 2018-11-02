class MotorcyclesController < ApplicationController
skip_before_action :authenticate_user!, only: [:index, :show]

	def index

    if params["search"]["starts_at"].present? && params["search"]["ends_at"].present?
      @motorcycles = []
      a = Date.parse(params["search"]["starts_at"])
      b = Date.parse(params["search"]["ends_at"])

      Motorcycle.all.each do |motorcycle|

        if motorcycle.bookings.all? do |booking|
          search_dates = (a..b)
          booking_dates = (booking.start_date..booking.end_date)

          !(search_dates).overlaps?(booking_dates)
          end

          @motorcycles << motorcycle
        end
      end #Motorcycles.all.each
    else
        @motorcycles = Motorcycle.all
    end
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

	def edit
      @motorcycle = Motorcycle.find(params[:id])
  end

  def update
      @motorcycle = Motorcycle.find(params[:id])
      @motorcycle.update(motorcycle_params)
      redirect_to motorcycle_path(@motorcycle)
  end

  def destroy
    @motorcycle = Motorcycle.find(params[:id])
    @motorcycle.destroy

    redirect_to @motorcycles
  end

private

  def motorcycle_params
    params.require(:motorcycle).permit(:name, :motor_type, :description, :price, :picture, :uploaded_photo)
  end

end
