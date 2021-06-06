require "mapbox-sdk"
Mapbox.access_token = "pk.eyJ1IjoiZ2dsZW5uODgiLCJhIjoiY2tuaGM5MDBzMHpqejJubndudTZ0Z2JtdCJ9.-qhIHeDpFXTkRntOn204uA"

class ClinicsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "address ILIKE :query OR category ILIKE :query"
      @clinics = Clinic.where(sql_query, query: "%#{params[:query]}%")
    else
      @clinics = Clinic.all
    end

    @markers = @clinics.geocoded.map do |clinic|
      {
        lat: clinic.latitude,
        lng: clinic.longitude
      }
    end
  end

  def show
    @clinic = Clinic.find(params[:id])
    # if Rails.env.production?
    @markers = {
      lat: @clinic.latitude,
      lng: @clinic.longitude
    }
  end

end
