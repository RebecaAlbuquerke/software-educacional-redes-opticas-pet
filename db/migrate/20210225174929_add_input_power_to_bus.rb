class AddInputPowerToBus < ActiveRecord::Migration[5.2]
  def change
    add_column :buses, :input_power, :float
  end
end
