class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.references :dog
      t.datetime :appointment_date
      t.string :location, :vet_name
      t.timestamps null: false
    end
  end
end
