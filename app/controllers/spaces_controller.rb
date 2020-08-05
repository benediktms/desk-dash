class SpacesController < ApplicationController

  def index
    @spaces = Space.geocoded

    @markers = @spaces.map do |space|
      {
        latitude: space.latitude,
        longitude: space.longitude
      }

    end
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    if @space.save
      redirect_to space_path(@space)
    else
      render :new
    end
  end

  private

  def space_params
    params.require(:space).permit(:name, :address, :longitude, :latitude)
  end
end
