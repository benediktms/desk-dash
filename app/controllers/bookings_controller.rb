class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]
  before_action :booking_params, only: %i[create update]

  def index
    @bookings = Booking.all
  end

  def show
    # added by Bruno
      @booking = Booking.find(params[:id])
    end

  def new
    @booking = Booking.new
  end

  def create
      @booking = Booking.new(booking_params)
        if @booking.save
      flash.alert = 'Booking created successfully'
      redirect_to bookings_path
    else
      flash.alert = 'There was an error with your booking'
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      flash.alert = 'Booking updated successfully'
      redirect_to bookings_path
    else
      flash.alert = 'There was an error updating your booking'
      render :edit
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    if @booking.destroy
      flash.notice = 'Booking deleted successfully'
      redirect_to bookings_path
    else
      flash.notice = 'There was an error deleting your booking'
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :space_id, :day)
  end
end
