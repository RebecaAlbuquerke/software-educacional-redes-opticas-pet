class AddDispersionBalanceToBus < ActiveRecord::Migration[5.2]
  def change
    add_column :buses, :dispersion_balance, :float
  end
end
