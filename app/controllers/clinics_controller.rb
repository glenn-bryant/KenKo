
class ClinicsController < ApplicationController
  def index
    @clinics = Clinic.all
  end

  def show
    @clinic = Clinic.find(params[:id])
  end

  def update
  end

  def new
  end

  def create
  end

  def destroy
  end

  private

  def clinic_params
    params.require(:clinic).permit(:name)
  end

end
