class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]
  def index
    @flats = Flat.all
  end

  def show
  end

  def new
    @flat = Flat.new
  end

  def edit
  end

  def create
    @flat = Flat.new(flat_params)
    @flat.save!
  end

  def update
    @flat = Flat.update(flat_params)
  end

  def destroy
    @flat.destroy
  end

  private

  def set_flat
    @restaurant = Flat.find(params[:id])
  end

  def flat_params
    params.require(:restaurant).permit(
      :name, :address, :description, :price_per_night, :number_of_guests
    )
  end
end
