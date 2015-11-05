class CreateVaccinations < ActiveRecord::Migration
  def change
    create_table :vaccinations do |t|
      t.references :dog
      t.string :name
      t.date :last, :next
      t.timestamps null: false
    end
  end
end
