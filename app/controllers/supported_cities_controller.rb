class SupportedCitiesController < ApplicationController
  def index
    @cities = City.all

  end
end
