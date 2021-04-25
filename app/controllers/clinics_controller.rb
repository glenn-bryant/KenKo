require "mapbox-sdk"
Mapbox.access_token = "pk.eyJ1IjoiZ2dsZW5uODgiLCJhIjoiY2tuaGM5MDBzMHpqejJubndudTZ0Z2JtdCJ9.-qhIHeDpFXTkRntOn204uA"

class ClinicsController < ApplicationController
  def index
    @clinics = Clinic.all
  end

  def show
    @clinic = Clinic.find(params[:id])
    # if Rails.env.production?

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
