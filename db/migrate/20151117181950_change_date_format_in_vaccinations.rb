class ChangeDateFormatInVaccinations < ActiveRecord::Migration
  def change
    change_column :vaccinations, :last, :datetime
    change_column :vaccinations, :next, :datetime
  end
end
