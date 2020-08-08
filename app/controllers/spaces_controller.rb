class SpacesController < ApplicationController
  before_action :set_space, only: :show
  before_action :space_params, only: :create

  def index
    if params[:query].present?
      @spaces = Space.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @spaces = Space.geocoded
    end

    @markers = @spaces.map do |space|
      {
        longitude: space.longitude,
        latitude: space.latitude,
        infoWindow: render_to_string(partial: "info_window", locals: { space: space })
      }
    end
  end

  def new
    @space = Space.new
  end

  # added by Bruno
  def show
    if params[:query].present?
      params.delete :query
    end
  end

  def create
    @space = Space.new
    if @space.save
      redirect_to space_path(@space)
    else
      render :new
    end
  end

  def destroy
    @space.destroy
    redirect_to space_path(@space)
  end

  private

  def space_params
    params.require(:space).permit(:name, :address, :price, :number_of_desks)
  end

  def set_space
    @space = Space.find(params[:id])
  end
end
