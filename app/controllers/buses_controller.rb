class BusesController < ApplicationController
  before_action :set_bus, only: %i[ show edit update destroy ]

  # GET /buses or /buses.json
  def index
    @buses = Bus.all
  end

  # GET /buses/1 or /buses/1.json
  def show
  end

  # GET /buses/new
  def new
    @bus = Bus.new
  end

  # GET /buses/1/edit
  def edit
  end

  # POST /buses or /buses.json
  def create
    @bus = Bus.new(bus_params)

    respond_to do |format|
      if @bus.save
        format.html { redirect_to @bus, notice: "Bus was successfully created." }
        format.json { render :show, status: :created, location: @bus }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buses/1 or /buses/1.json
  def update
    respond_to do |format|
      if @bus.update(bus_params)
        format.html { redirect_to @bus, notice: "Bus was successfully updated." }
        format.json { render :show, status: :ok, location: @bus }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buses/1 or /buses/1.json
  def destroy
    @bus.destroy
    respond_to do |format|
      format.html { redirect_to buses_url, notice: "Bus was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bus
      @bus = Bus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bus_params
      params.require(:bus).permit(:maximum_transmission_power, :baud_rate, :receiver_sensitivity, :effective_receiver_band, :codification, :link_distance, :number_of_stations, :insertion_loss, :loss_of_DP_coupling, :loss_of_excess_DP, :link_length, :fiber_attenuation_coefficient, :loss_of_transmission_of_the_T_coupler, :loss_of_coupling_T_coupler, :excess_loss_of_T_coupler, :dispersion_balance, :electric_Tx_bandwidth, :spectral_width, :chromatic_dispersion, :optical_bandwidth, :coupling_coefficient, :electric_Rx_bandwidth)
    end
end
