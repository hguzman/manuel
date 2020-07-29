class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :placa
      t.integer :modelo
      t.string :color

      t.timestamps
    end
  end
end
