class ChangeDateFormatInMultiple < ActiveRecord::Migration
  def change
    change_column :vaccinations, :last, :date
    change_column :vaccinations, :next, :date
    change_column :appointments, :appointment_date, :date
  end
end
