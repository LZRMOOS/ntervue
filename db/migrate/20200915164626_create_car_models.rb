class CreateCarModels < ActiveRecord::Migration[5.2]
  def change
    create_table :car_models do |t|
      t.string :name
      t.integer :year
      t.string :color

      t.timestamps
    end

    add_reference :car_models, :car_make, index: true, foreign_key: true
  end
end
