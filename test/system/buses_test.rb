require "application_system_test_case"

class BusesTest < ApplicationSystemTestCase
  setup do
    @bus = buses(:one)
  end

  test "visiting the index" do
    visit buses_url
    assert_selector "h1", text: "Buses"
  end

  test "creating a Bus" do
    visit buses_url
    click_on "New Bus"

    fill_in "Baud rate", with: @bus.baud_rate
    fill_in "Chromatic dispersion", with: @bus.chromatic_dispersion
    check "Codification" if @bus.codification
    fill_in "Coupling coefficient", with: @bus.coupling_coefficient
    fill_in "Dispersion balance", with: @bus.dispersion_balance
    fill_in "Effective receiver band", with: @bus.effective_receiver_band
    fill_in "Electric rx bandwidth", with: @bus.electric_Rx_bandwidth
    fill_in "Electric tx bandwidth", with: @bus.electric_Tx_bandwidth
    fill_in "Excess loss of t coupler", with: @bus.excess_loss_of_T_coupler
    fill_in "Fiber attenuation coefficient", with: @bus.fiber_attenuation_coefficient
    fill_in "Insertion loss", with: @bus.insertion_loss
    check "Link distance" if @bus.link_distance
    fill_in "Link length", with: @bus.link_length
    fill_in "Loss of dp coupling", with: @bus.loss_of_DP_coupling
    fill_in "Loss of coupling t coupler", with: @bus.loss_of_coupling_T_coupler
    fill_in "Loss of excess dp", with: @bus.loss_of_excess_DP
    fill_in "Loss of transmission of the t coupler", with: @bus.loss_of_transmission_of_the_T_coupler
    fill_in "Maximum transmission power", with: @bus.maximum_transmission_power
    fill_in "Number of stations", with: @bus.number_of_stations
    fill_in "Optical bandwidth", with: @bus.optical_bandwidth
    fill_in "Receiver sensitivity", with: @bus.receiver_sensitivity
    fill_in "Spectral width", with: @bus.spectral_width
    click_on "Create Bus"

    assert_text "Bus was successfully created"
    click_on "Back"
  end

  test "updating a Bus" do
    visit buses_url
    click_on "Edit", match: :first

    fill_in "Baud rate", with: @bus.baud_rate
    fill_in "Chromatic dispersion", with: @bus.chromatic_dispersion
    check "Codification" if @bus.codification
    fill_in "Coupling coefficient", with: @bus.coupling_coefficient
    fill_in "Dispersion balance", with: @bus.dispersion_balance
    fill_in "Effective receiver band", with: @bus.effective_receiver_band
    fill_in "Electric rx bandwidth", with: @bus.electric_Rx_bandwidth
    fill_in "Electric tx bandwidth", with: @bus.electric_Tx_bandwidth
    fill_in "Excess loss of t coupler", with: @bus.excess_loss_of_T_coupler
    fill_in "Fiber attenuation coefficient", with: @bus.fiber_attenuation_coefficient
    fill_in "Insertion loss", with: @bus.insertion_loss
    check "Link distance" if @bus.link_distance
    fill_in "Link length", with: @bus.link_length
    fill_in "Loss of dp coupling", with: @bus.loss_of_DP_coupling
    fill_in "Loss of coupling t coupler", with: @bus.loss_of_coupling_T_coupler
    fill_in "Loss of excess dp", with: @bus.loss_of_excess_DP
    fill_in "Loss of transmission of the t coupler", with: @bus.loss_of_transmission_of_the_T_coupler
    fill_in "Maximum transmission power", with: @bus.maximum_transmission_power
    fill_in "Number of stations", with: @bus.number_of_stations
    fill_in "Optical bandwidth", with: @bus.optical_bandwidth
    fill_in "Receiver sensitivity", with: @bus.receiver_sensitivity
    fill_in "Spectral width", with: @bus.spectral_width
    click_on "Update Bus"

    assert_text "Bus was successfully updated"
    click_on "Back"
  end

  test "destroying a Bus" do
    visit buses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bus was successfully destroyed"
  end
end
