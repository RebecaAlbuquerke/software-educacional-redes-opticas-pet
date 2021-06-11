class Bus < ApplicationRecord

  after_create :balancodepotencia
  after_create :perdadeenlace
  after_create :balancodedispersao
  
  
   def balancodepotencia
       self.input_power = self.maximum_transmission_power - 3  # Potencia de Entrada
       if self.codification == 1
           self.effective_band = self.effective_receiver_band  # Banda Efetiva
       else
           self.effective_band = self.effective_receiver_band*2  # Banda Efetiva
 
       self.relative_sensitivity = self.receiver_sensitivity + 10*Math.log(self.effective_band/self.effective_receiver_band, 10)  # Sensibilidade relativa
       self.power_balance = self.input_power - self.relative_sensitivity  # Balanço de potencia
       self.save
       end
   end

   def perdadeenlace
    if self.link_distance == 1
        self.ae_a1 = self.loss_of_amendments / self.average_fiber_length
        self.link_losses =  2 * (2 * self.insertion_loss + self.loss_of_DP_coupling + self.loss_of_excess_DP) + (self.number_of_stations - 2) * (
            2 * self.insertion_loss + self.loss_of_transmission_of_the_T_coupler + self.excess_loss_of_T_coupler) + (self.fiber_attenuation_coefficient + self.ae_a1) * self.link_length  # Perdas do Enlace
        self.save
    else
        self.link_losses =  2 * (2 * self.insertion_loss + self.loss_of_DP_coupling + self.loss_of_excess_DP) + (self.number_of_stations - 2) * (
            2 * self.insertion_loss + self.loss_of_transmission_of_the_T_coupler + self.excess_loss_of_T_coupler) + self.fiber_attenuation_coefficient * self.link_length  # Perdas do Enlace
        self.save
    end
   end

   def balancodedispersao
    tTO_a1 = 0.35 / (self.electric_Tx_bandwidth * (10**6))  # Tempo de subida do pulso do TX
    rhoTO_a1 = tTO_a1 / 2.1972  # Alargamento do pulso do TX
    deltarho_a1 = 0.188 / (self.optical_bandwidth * (10 ** 6))
    
    if self.link_distance == 1
        rhoModal_a1 = deltarho_a1 * ((1) ** (self.coupling_coefficient))  # Dispersão modal da fibra
        rhoCrom_a1 = chromatic_dispersion * (10 ** -12) * self.spectral_width * 1  # Dispersão cromática da fibra
    else
        rhoModal_a1 = deltarho_a1 * ((0) ** (self.coupling_coefficient))  # Dispersão modal da fibra
        rhoCrom_a1 = chromatic_dispersion * (10 ** -12) * self.spectral_width * 0  # Dispersão cromática da fibra
    end

    rhoFibra_a1 = Math.sqrt((rhoModal_a1 ** 2) + (rhoCrom_a1 ** 2))  # Alargamento total do pulso introduzido pela fibra
    tf_a1 = 2.354 * rhoFibra_a1  # Tempo total de subida da fibra óptica
    tRO_a1 = 0.35 / (self.electric_Rx_bandwidth * (10 ** 6))  # Tempo de subida no receptor
    rhoRO_a1 = tRO_a1 / 2.1972  # Alargamento do pulso no receptor
    rhosist_a1 = Math.sqrt((rhoTO_a1 ** 2) + (rhoFibra_a1 ** 2) + (rhoRO_a1 ** 2))  # Alargamento do pulso do sistema
    tsist_a1 = Math.sqrt((tTO_a1 ** 2) + (tf_a1 ** 2) + (tRO_a1 ** 2))  # Tempo de subida do sistema
    interv1_a1 = 1 / (self.effective_band * (10 ** 6))  # Periodo T
    self.dispersion_balance = (rhosist_a1 / interv1_a1) * 100
   end

end
