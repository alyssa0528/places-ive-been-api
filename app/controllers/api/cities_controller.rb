class Api::CitiesController < ApplicationController

  def index
    render json: City.all
  end

  def show
    render json: City.find(params[:id])
  end

  def create
    city = City.new(city_params)
    if city.save
      render json: city
    else
      render json: {message: city.errors }, status: 400
    end
  end

  # def update
  # end

  # def destroy
  # end


  private

  def city_params
    params.require(:city).permit(:name)
  end

end
