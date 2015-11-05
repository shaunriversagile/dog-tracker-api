class MedicationsController < ApplicationController
  def show
    @medication = Medication.find(params[:id])
    render json: @medication
  end

  def create
    @medication = Medication.new(medication_params)
    @medication.save!
    render json: @medication
  end

  def medication_params
    params.require(:medication).permit(
        :name,
        :dose,
        :comment
    )
  end
end
