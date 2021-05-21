class AddLinkLossesToBus < ActiveRecord::Migration[5.2]
  def change
    add_column :buses, :link_losses, :float
  end
end
