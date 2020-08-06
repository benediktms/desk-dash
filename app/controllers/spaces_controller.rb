class SpacesController < ApplicationController
  before_action :set_space, only: :show
  before_action :space_params, only: :create

  def index
    @spaces = Space.geocoded

    @markers = @spaces.map do |space|
      {
        latitude: space.latitude,
        longitude: space.longitude
      }

    end
  end

  def show
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new
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

  def set_space
    @space = Space.find(params[:id])
  end
end
