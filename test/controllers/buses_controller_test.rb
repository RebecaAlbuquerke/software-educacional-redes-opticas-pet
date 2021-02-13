require 'test_helper'

class BusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bus = buses(:one)
  end

  test "should get index" do
    get buses_url
    assert_response :success
  end

  test "should get new" do
    get new_bus_url
    assert_response :success
  end

  test "should create bus" do
    assert_difference('Bus.count') do
      post buses_url, params: { bus: { baud_rate: @bus.baud_rate, chromatic_dispersion: @bus.chromatic_dispersion, codification: @bus.codification, coupling_coefficient: @bus.coupling_coefficient, dispersion_balance: @bus.dispersion_balance, effective_receiver_band: @bus.effective_receiver_band, electric_Rx_bandwidth: @bus.electric_Rx_bandwidth, electric_Tx_bandwidth: @bus.electric_Tx_bandwidth, excess_loss_of_T_coupler: @bus.excess_loss_of_T_coupler, fiber_attenuation_coefficient: @bus.fiber_attenuation_coefficient, insertion_loss: @bus.insertion_loss, link_distance: @bus.link_distance, link_length: @bus.link_length, loss_of_DP_coupling: @bus.loss_of_DP_coupling, loss_of_coupling_T_coupler: @bus.loss_of_coupling_T_coupler, loss_of_excess_DP: @bus.loss_of_excess_DP, loss_of_transmission_of_the_T_coupler: @bus.loss_of_transmission_of_the_T_coupler, maximum_transmission_power: @bus.maximum_transmission_power, number_of_stations: @bus.number_of_stations, optical_bandwidth: @bus.optical_bandwidth, receiver_sensitivity: @bus.receiver_sensitivity, spectral_width: @bus.spectral_width } }
    end

    assert_redirected_to bus_url(Bus.last)
  end

  test "should show bus" do
    get bus_url(@bus)
    assert_response :success
  end

  test "should get edit" do
    get edit_bus_url(@bus)
    assert_response :success
  end

  test "should update bus" do
    patch bus_url(@bus), params: { bus: { baud_rate: @bus.baud_rate, chromatic_dispersion: @bus.chromatic_dispersion, codification: @bus.codification, coupling_coefficient: @bus.coupling_coefficient, dispersion_balance: @bus.dispersion_balance, effective_receiver_band: @bus.effective_receiver_band, electric_Rx_bandwidth: @bus.electric_Rx_bandwidth, electric_Tx_bandwidth: @bus.electric_Tx_bandwidth, excess_loss_of_T_coupler: @bus.excess_loss_of_T_coupler, fiber_attenuation_coefficient: @bus.fiber_attenuation_coefficient, insertion_loss: @bus.insertion_loss, link_distance: @bus.link_distance, link_length: @bus.link_length, loss_of_DP_coupling: @bus.loss_of_DP_coupling, loss_of_coupling_T_coupler: @bus.loss_of_coupling_T_coupler, loss_of_excess_DP: @bus.loss_of_excess_DP, loss_of_transmission_of_the_T_coupler: @bus.loss_of_transmission_of_the_T_coupler, maximum_transmission_power: @bus.maximum_transmission_power, number_of_stations: @bus.number_of_stations, optical_bandwidth: @bus.optical_bandwidth, receiver_sensitivity: @bus.receiver_sensitivity, spectral_width: @bus.spectral_width } }
    assert_redirected_to bus_url(@bus)
  end

  test "should destroy bus" do
    assert_difference('Bus.count', -1) do
      delete bus_url(@bus)
    end

    assert_redirected_to buses_url
  end
end
