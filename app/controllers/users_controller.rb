require "mapbox-sdk"
Mapbox.access_token = "pk.eyJ1IjoiZ2dsZW5uODgiLCJhIjoiY2tuaGM5MDBzMHpqejJubndudTZ0Z2JtdCJ9.-qhIHeDpFXTkRntOn204uA"

class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    # if Rails.env.production?
      @location = Mapbox::Geocoder.geocode_forward("Tokyo-to, nerima-ku, nakamura-minami 1-22-18")
      raise
    # end  
  end

  def update
  end

  def new
  end

  def create
  end

  def destroy
  end
end
