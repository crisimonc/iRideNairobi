class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @motorcycle = Motorcycle.find(params[:motorcycle_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)

    @booking.motorcycle = Motorcycle.find(params[:motorcycle_id])
    @booking.save

    redirect_to motorcycle_bookings_path(@booking.motorcycle)
  end


  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :motorcycle_id, :current_user)
  end


end

# create_table "bookings", force: :cascade do |t|
#     t.date "start_date"
#     t.date "end_date"
#     t.bigint "motorcycle_id"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.bigint "user_id"
#     t.index ["motorcycle_id"], name: "index_bookings_on_motorcycle_id"
#     t.index ["user_id"], name: "index_bookings_on_user_id"
