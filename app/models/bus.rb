class Bus < ApplicationRecord

  after_create :balanco
  
  
   def balanco
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
end
