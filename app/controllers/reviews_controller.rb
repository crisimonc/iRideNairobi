class ReviewsController < ApplicationController

  def new
    @booking = booking.find(params[:booking_id].to_i)
    @review = Review.new(booking_id: @booking.id)
  end

  def create
    @review = Review.new(review_params)
    @booking = booking.find(params[:booking_id].to_i)
    @review.booking = @booking
    @review.save
    
    if @review.save
      redirect_to booking_path(@booking)
    else
  	  render :new
  	end

  end

  private

  def review_params
    params.require(:review).permit(:content, :stars, :booking_id)
  end
end
