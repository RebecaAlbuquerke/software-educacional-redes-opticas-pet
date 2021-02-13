require "application_system_test_case"

class RingsTest < ApplicationSystemTestCase
  setup do
    @ring = rings(:one)
  end

  test "visiting the index" do
    visit rings_url
    assert_selector "h1", text: "Rings"
  end

  test "creating a Ring" do
    visit rings_url
    click_on "New Ring"

    fill_in "Baud rate", with: @ring.baud_rate
    check "Codification" if @ring.codification
    fill_in "Effective receiver band", with: @ring.effective_receiver_band
    check "Link distance" if @ring.link_distance
    fill_in "Maximum transmission power", with: @ring.maximum_transmission_power
    fill_in "Receiver sensitivity", with: @ring.receiver_sensitivity
    click_on "Create Ring"

    assert_text "Ring was successfully created"
    click_on "Back"
  end

  test "updating a Ring" do
    visit rings_url
    click_on "Edit", match: :first

    fill_in "Baud rate", with: @ring.baud_rate
    check "Codification" if @ring.codification
    fill_in "Effective receiver band", with: @ring.effective_receiver_band
    check "Link distance" if @ring.link_distance
    fill_in "Maximum transmission power", with: @ring.maximum_transmission_power
    fill_in "Receiver sensitivity", with: @ring.receiver_sensitivity
    click_on "Update Ring"

    assert_text "Ring was successfully updated"
    click_on "Back"
  end

  test "destroying a Ring" do
    visit rings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ring was successfully destroyed"
  end
end
