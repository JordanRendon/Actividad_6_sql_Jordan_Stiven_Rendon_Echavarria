SELECT species_animal.name AS 'Animal', population AS 'Ejemplares',
state_of_conservation_id AS 'Estado sin proceso',
case state_of_conservation_id
  WHEN 1 THEN 'Bajo riesgo'
  WHEN 2 THEN 'En amenazas'
  WHEN 3 THEN 'Extinto' 
END AS 'Estado'
FROM species_animal