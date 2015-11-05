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

  def appointment_params
    params.require(:appointment).permit(
        :appointment_date,
        :location,
        :vet_name
    )
  end
end