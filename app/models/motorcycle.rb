class Motorcycle < ApplicationRecord
	def index
		@motorcycles = Motorcycle.all
	end

	def show
		@motorcycle = Motorcycle.find(params[:id])
	end
end
