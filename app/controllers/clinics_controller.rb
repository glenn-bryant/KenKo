require "mapbox-sdk"
Mapbox.access_token = "pk.eyJ1IjoiZ2dsZW5uODgiLCJhIjoiY2tuaGM5MDBzMHpqejJubndudTZ0Z2JtdCJ9.-qhIHeDpFXTkRntOn204uA"

class ClinicsController < ApplicationController
  
  def index
    if params[:query].present?
      sql_query = "address ILIKE :query OR category ILIKE :query"
      @clinics = policy_scope(Clinic).where(sql_query, query: "%#{params[:query]}%")
    else
      @clinics = policy_scope(Clinic).order(created_at: :desc)
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
    authorize @clinic
    # if Rails.env.production?
    @clinicmarkers = [{
      lat: @clinic.latitude,
      lng: @clinic.longitude
    }]
  end

end
