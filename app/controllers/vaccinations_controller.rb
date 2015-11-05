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

  def vaccination_params
    params.require(:vaccination_params).permit(
        :name,
        :last,
        :next
    )
  end
end
