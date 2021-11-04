class CalendersController < ApplicationController
  def show
    response = HTTP.get("https://holidays.abstractapi.com/v1/?api_key=#{Rails.application.credentials.calender_api_key}&country=US&year=2020&month=#{params[:month]}&day=#{params[:day]}")
    render json: response.parse(:json)
  end
end
