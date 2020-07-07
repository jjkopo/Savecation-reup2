class AttractionInfoController < ApplicationController
  def index
  	@attraction_id = params[:id]
    attraction = Triplace.find(id=params[:id])
    @title = attraction.title
    @city_name = City.find(id=attraction.city_id).name
    @price = attraction.price
    @src = "//www.google.com/maps/embed/v1/place?q=" + @title + "&zoom=17&key=AIzaSyBdHe-dzBXY0NyfgJotSAV_x08ElhZIk7c".to_s
    puts @src
  end
end
