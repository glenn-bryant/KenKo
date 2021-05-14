class FavoritesController < ApplicationController
  def create
    @clinic = Clinic.find(params[:clinic_id])
    Favorite.create(user: current_user, clinic: @clinic)
    respond_to do |format|
      format.html { redirect_to clinics_path}
      format.js
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @clinic = @favorite.clinic
    @favorite.delete
    respond_to do |format|
      format.js
    end
  end
end
