class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.references :dog
      t.string :name, :dose, :comment
      t.timestamps null: false
    end
  end
end
