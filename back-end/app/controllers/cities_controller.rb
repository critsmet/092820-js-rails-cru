class CitiesController < ApplicationController

  def create
    city = City.create(name: params[:name], population: params[:population], country_id: params[:country_id])
    render json: city
  end

  def destroy
    city = City.find_by(id: params[:id])
    city.destroy
    render json: {successful: true}
  end

end
