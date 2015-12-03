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

  def update
    @medication = Medication.find(update_params[:id])
    @medication.update(update_params)
    render json: @medication
  end

  def medication_params
    params.require(:medication).permit(
        :dog_id,
        :name,
        :dose,
        :comment
    )
  end

  def update_params
    params.require(:medication).permit(
        :id,
        :name,
        :dose,
        :comment
    )
  end
end
