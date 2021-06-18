class LikesController < ApplicationController
  before_action :find_clinic, except: [:index]
  before_action :find_like, only: [:destroy]

  def create
    if already_liked?
      flash[:notice] = "You can't like more than once"
    else
      @clinic.likes.create(user_id: current_user.id)
    end
    redirect_to clinic_path(@clinic)

    authorize @clinic.likes
    respond_to do |format|
      format.html { redirect_to clinic_path(@clinic) }
      format.js
      return
    end
  end

  def index
    @likes = policy_scope(Like).order(created_at: :desc)

  end

  def destroy
    if !(already_liked?)
      flash[:notice] = "Cannot unlike"
    else
      @like.destroy
    end
    redirect_to clinic_path(@clinic)
    authorize @like
  end

  def find_like
    @like = @clinic.likes.find(params[:id])
  end

  private

  def find_clinic
    @clinic = Clinic.find(params[:clinic_id])
  end
  
  def already_liked?
    Like.where(user_id: current_user.id, clinic_id:
    params[:clinic_id]).exists?
  end

end
