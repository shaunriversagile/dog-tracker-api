class VaccinationsController < ApplicationController
  def show
    @vaccination = Vaccination.find(params[:id])
    render json: @vaccination
  end

  def create
    @vaccination = Vaccination.new(vaccination_params)
    @vaccination.save!
    render json: @vaccination
  end

  def update
    @vaccination = Vaccination.find(update_params[:id])
    @vaccination.update(update_params)
    render json: @vaccination
  end

  def vaccination_params
    params.require(:vaccination).permit(
        :dog_id,
        :name,
        :last,
        :next
    )
  end

  def update_params
    params.require(:vaccination).permit(
        :id,
        :name,
        :last,
        :next
    )
  end
end
