class CreateBuses < ActiveRecord::Migration[5.2]
  def change
    create_table :buses do |t|
      t.float :maximum_transmission_power
      t.float :baud_rate
      t.float :receiver_sensitivity
      t.float :effective_receiver_band
      t.boolean :codification
      t.boolean :link_distance
      t.float :number_of_stations
      t.float :insertion_loss
      t.float :loss_of_DP_coupling
      t.float :loss_of_excess_DP
      t.float :link_length
      t.float :fiber_attenuation_coefficient
      t.float :loss_of_transmission_of_the_T_coupler
      t.float :loss_of_coupling_T_coupler
      t.float :excess_loss_of_T_coupler
      t.float :dispersion_balance
      t.float :electric_Tx_bandwidth
      t.float :spectral_width
      t.float :chromatic_dispersion
      t.float :optical_bandwidth
      t.float :coupling_coefficient
      t.float :electric_Rx_bandwidth

      t.timestamps
    end
  end
end
