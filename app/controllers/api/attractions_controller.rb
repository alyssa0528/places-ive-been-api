class Api::AttractionsController < ApplicationController

  def index
    render json: Attraction.all
  end

  def show
    render json: Attraction.find(params[:id])
  end

  def create
    attraction = Attraction.new(attraction_params)

    if attraction.save
      render json: attraction
    else
      render json: { message: attraction.errors }, status: 400
    end
  end

  def update
    attraction = Attraction.find(params[:id])

    if attraction.update(attraction_params)
      render json: attraction
    else
      render json: { message: attraction.errors }, status: 400
    end
  end

  private

  def attraction_params
    params.require(:attraction).permit(:name, :city, :year_visited, :img_url, :notes)
  end
end
