# Create data frame of Philippine-made cars and their engines
PH_cars <- data.frame(
  Brand = c("Aurelio", "Sarao Motors", "Toyota PH", "Honda PH", "Mazda PH", "Mitsubishi PH", "Chariot Motors"),
  Model = c("Aurelio Supercar", "Jeepney", "Vios", "City", "3 Sedan", "Mirage G4", "Chariot EV"),
  Engine = c("Mitsubishi 4G63 Turbo", 
             "Diesel Inline-4", 
             "1.3L Dual VVT-i", 
             "1.5L i-VTEC", 
             "1.5L SkyActiv-G", 
             "1.2L MIVEC", 
             "Electric Motor"),
  Type = c("Sports Car", "Utility", "Sedan", "Sedan", "Sedan", "Sedan", "EV"),
  Assembled_in_PH = c(TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE)
)

# View the data frame
print(PH_cars)
