class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]
  before_action :booking_params, only: %i[create update]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    if @bookings.save
      flash.alert = 'Booking created successfully'
    #   redirect_to booking_path
    else
      flash.alert = 'There was an error with your booking'
      render :new
    end
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      flash.alert = 'Booking updated successfully'
      # redirect_to booking_path
    else
      flash.alert = 'There was an error updating your booking'
      render :edit
    end
  end

  def destroy
    if @booking.delete
      flash.notice = 'Booking deleted successfully'
    else
      flash.notice = 'There was an error deleting your booking'
    end
  end

  private

  def set_booking
    @booking = Booking.find[:id]
  end

  def booking_params
    params.require(:booking).permit(:user_id, :space_id, :day)
  end
end
