class CreateDietaryRestrictions < ActiveRecord::Migration
  def change
    create_table :dietary_restrictions do |t|
      t.references :dog
      t.string :food_name, :comment
      t.timestamps null: false
    end
  end
end
