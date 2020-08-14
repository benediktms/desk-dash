class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]
  before_action :booking_params, only: %i[create update]

  def index
    @bookings = Booking.all
  end

  def show; end

  def new
    @booking = Booking.new
    @booking.user = current_user
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking

    if @booking.save
      flash.alert = 'Booking created successfully'
      redirect_to bookings_path
    else
      flash.alert = 'There was an error with your booking'
      render :new
    end
  end

  def edit; end

  def update
    if @booking.update(booking_params)
      flash.alert = 'Booking updated successfully'
      redirect_to bookings_path
    else
      flash.alert = 'There was an error updating your booking'
      render :edit
    end
  end

  def destroy
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
    params.require(:booking).permit(:day, :space)
  end
end
