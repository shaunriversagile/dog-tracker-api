class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name, :breed, :weight, :age, :sex
      t.boolean :is_spayed_or_neutered, :default => false
      t.timestamps null: false
    end
  end
end
