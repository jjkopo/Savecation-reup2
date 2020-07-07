class SchedulesController < ApplicationController

  require 'open-uri'

  def index
    city_id = params[:city_id]
    @city_name = City.find(id=city_id).name
    @days = params[:days]
    @budget = params[:budget]

    @url = 'http://pure-coast-27115.herokuapp.com/generate_schedule/city/' + city_id + '/days/' + @days + '/budget/' + @budget
    @attraction_base_url = 'http://pure-coast-27115.herokuapp.com/attraction_detail/'

    @result = JSON.load(open(@url).read)

    @new_schedule = Schedule.new(body: @result, user_id: current_user.id)

    if @new_schedule.save
      puts 'Schedule id = ' + @new_schedule.id.to_s
    else
      puts 'Couldn\'t save schedule'
    end

    @total_price = @result['total']
  end

  def destroy
    Schedule.find(params[:id]).destroy
    flash[:success] = 'Schedule deleted'
    redirect_to current_user
  end

  def show
    @schedule = Schedule.find(params[:id])

    @schedule_body = Schedule.find(params[:id]).body

    @schedule_body.gsub!(/([{,]\s*):([^>\s]+)\s*=>/, '\1"\2"=>')
    @schedule_body.gsub!(/([{,]\s*)([0-9]+\.?[0-9]*)\s*=>/, '\1"\2"=>')
    @schedule_body.gsub!(/([{,]\s*)(".+?"|[0-9]+\.?[0-9]*)\s*=>\s*:([^,}\s]+\s*)/, '\1\2=>"\3"')
    @schedule_body.gsub!(/([\[,]\s*):([^,\]\s]+)/, '\1"\2"')
    @schedule_body.gsub!(/([{,]\s*)(".+?"|[0-9]+\.?[0-9]*)\s*=>/, '\1\2:')

    @attraction_base_url = 'http://pure-coast-27115.herokuapp.com/attraction_detail/'
    @result = JSON.parse(@schedule_body)
    @total_price = @result['total']
    @city_name = City.find(@result['city_id']).name
  end
end
