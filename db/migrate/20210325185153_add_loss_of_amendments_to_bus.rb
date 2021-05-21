class AddLossOfAmendmentsToBus < ActiveRecord::Migration[5.2]
  def change
    add_column :buses, :rloss_of_amendments, :float
  end
end
