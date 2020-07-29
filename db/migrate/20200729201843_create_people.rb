class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :identificacion
      t.string :nombre
      t.integer :edad

      t.timestamps
    end
  end
end
