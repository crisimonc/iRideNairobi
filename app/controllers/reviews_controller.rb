class ReviewsController < ApplicationController

  def new
    @booking = Booking.find(params[:booking_id].to_i)
    @review = Review.new(booking: @booking)
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id].to_i)
    @review.booking = @booking
    @review.save
    
    if @review.save
      redirect_to motorcycle_path(@booking.motorcycle)
    else
  	  render :new
  	end

  end

  private

  def review_params
    params.require(:review).permit(:content, :stars, :booking_id)
  end
end
