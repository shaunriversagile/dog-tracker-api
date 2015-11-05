class DietaryRestrictionsController < ApplicationController
  def show
    @dietary_restriction = DietaryRestriction.find(params[:id])
    render json: @dietary_restriction
  end

  def create
    @dietary_restriction = DietaryRestriction.new(appointment_params)
    @dietary_restriction.save!
    render json: @dietary_restriction
  end

  def appointment_params
    params.require(:dietary_restriction).permit(
        :food_name,
        :comment
    )
  end
end
