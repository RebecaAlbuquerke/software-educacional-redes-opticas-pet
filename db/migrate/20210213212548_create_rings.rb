class CreateRings < ActiveRecord::Migration[5.2]
  def change
    create_table :rings do |t|
      t.float :maximum_transmission_power
      t.float :baud_rate
      t.float :receiver_sensitivity
      t.float :effective_receiver_band
      t.boolean :codification
      t.boolean :link_distance

      t.timestamps
    end
  end
end
