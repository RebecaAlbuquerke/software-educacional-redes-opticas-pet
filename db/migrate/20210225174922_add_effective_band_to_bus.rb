class AddEffectiveBandToBus < ActiveRecord::Migration[5.2]
  def change
    add_column :buses, :effective_band, :float
  end
end
