class BookingsController < ApplicationController
    def new
        @booking = Booking.new
        @van = Van.find(params[:van_id])
    end

    def create
        @van = Van.find(params[:van_id])
        @booking = Booking.new(booking_params)
        @booking.user = current_user
        @booking.van = @van
        @booking.price = (@booking.end - @booking.start) * @van.price_per_night
        if @booking.save
        # redirect_to van_path(@van)
        redirect_to bookings_path
      else
        render :new
      end
    end

    def index
      @bookings = Booking.all
    end

    private

    def booking_params
    params.require(:booking).permit(:start, :end, :price)
  end
end


