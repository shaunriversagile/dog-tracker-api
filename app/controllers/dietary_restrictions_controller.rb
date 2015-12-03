class DietaryRestrictionsController < ApplicationController
  def show
    @dietary_restriction = DietaryRestriction.find(params[:id])
    render json: @dietary_restriction
  end

  def create
    @dietary_restriction = DietaryRestriction.new(dietary_restriction_params)
    @dietary_restriction.save!
    render json: @dietary_restriction
  end

  def update
    @dietary_restriction = DietaryRestriction.find(params[:id])
    @dietary_restriction.update(update_params)
    render json: @dietary_restriction
  end

  def dietary_restriction_params
    params.require(:dietary_restriction).permit(
        :dog_id,
        :food_name,
        :comment
    )
  end

  def update_params
    params.require(:dietary_restriction).permit(
        :food_name,
        :comment
    )
  end
end
