class SpacesController < ApplicationController

  def index
    # Bruno corrected a typo (Space instead of Spaces)
    @spaces = Space.all
  end

  def new
    @space = Space.new
  end

  # added by Bruno
  def show
    @space = Space.find(params[:id])
  end

  def create
    @space = Space.new(space_params)
    if @space.save
      redirect_to space_path(@space)
    else
      render :new
    end
  end

  def destroy
    @space = Space.find(params[:id])
    @space.destroy
    redirect_to space_path(@space)
  end

  private

  def space_params
    params.require(:space).permit(:name, :address, :price, :number_of_desks)
  end
end
