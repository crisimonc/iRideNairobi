class MotorcyclesController < ApplicationController

  def new
    @motorcycle = Motorcycle.new
  end

  def create
    @motorcycle = Motorcycle.new(params[:name :type :description]
    @motorcycle.save
  end

end
