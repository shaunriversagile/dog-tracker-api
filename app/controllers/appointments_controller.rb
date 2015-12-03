class AppointmentsController < ApplicationController

  def show
    @appointment = Appointment.find(params[:id])
    render json: @appointment
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.save!
    render json: @appointment
  end

  def update
    @appointment = Appointment.find(update_params[:id])
    @appointment.update(update_params)
    render json: @appointment
  end

  def appointment_params
    params.require(:appointment).permit(
        :dog_id,
        :appointment_date,
        :location,
        :vet_name
    )
  end

  def update_params
    params.require(:appointment).permit(
        :id,
        :appointment_date,
        :location,
        :vet_name
    )
  end
end
