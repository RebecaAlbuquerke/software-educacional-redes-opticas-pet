class AddAverageFiberLengthToBus < ActiveRecord::Migration[5.2]
  def change
    add_column :buses, :average_fiber_length, :float
  end
end
