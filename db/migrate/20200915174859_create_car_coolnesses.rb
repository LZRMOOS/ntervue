class CreateCarCoolnesses < ActiveRecord::Migration[5.2]
  def change
    create_table :car_coolnesses do |t|
      t.integer :coolness_score

      t.timestamps
    end

    add_reference :car_coolnesses, :car_make, index: true, foreign_key: true
  end
end
