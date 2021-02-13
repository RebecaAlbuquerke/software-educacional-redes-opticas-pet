require 'test_helper'

class RingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ring = rings(:one)
  end

  test "should get index" do
    get rings_url
    assert_response :success
  end

  test "should get new" do
    get new_ring_url
    assert_response :success
  end

  test "should create ring" do
    assert_difference('Ring.count') do
      post rings_url, params: { ring: { baud_rate: @ring.baud_rate, codification: @ring.codification, effective_receiver_band: @ring.effective_receiver_band, link_distance: @ring.link_distance, maximum_transmission_power: @ring.maximum_transmission_power, receiver_sensitivity: @ring.receiver_sensitivity } }
    end

    assert_redirected_to ring_url(Ring.last)
  end

  test "should show ring" do
    get ring_url(@ring)
    assert_response :success
  end

  test "should get edit" do
    get edit_ring_url(@ring)
    assert_response :success
  end

  test "should update ring" do
    patch ring_url(@ring), params: { ring: { baud_rate: @ring.baud_rate, codification: @ring.codification, effective_receiver_band: @ring.effective_receiver_band, link_distance: @ring.link_distance, maximum_transmission_power: @ring.maximum_transmission_power, receiver_sensitivity: @ring.receiver_sensitivity } }
    assert_redirected_to ring_url(@ring)
  end

  test "should destroy ring" do
    assert_difference('Ring.count', -1) do
      delete ring_url(@ring)
    end

    assert_redirected_to rings_url
  end
end
