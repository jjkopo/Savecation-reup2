class CityDetailController < ApplicationController
  layout "creative"

  def index
    @city_id = params[:id]
    @city_name = City.find(id=@city_id).name

  end
end
