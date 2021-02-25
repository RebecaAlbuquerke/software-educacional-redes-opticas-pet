class AddRelativeSensitivityToBus < ActiveRecord::Migration[5.2]
  def change
    add_column :buses, :relative_sensitivity, :float
  end
end
