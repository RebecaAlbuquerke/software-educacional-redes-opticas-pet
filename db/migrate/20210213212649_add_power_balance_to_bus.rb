class AddPowerBalanceToBus < ActiveRecord::Migration[5.2]
  def change
    add_column :buses, :power_balance, :float
  end
end
