SELECT species_animal.name AS 'Nombre Animal', developments_embryonary.name AS 'Forma de Reproducción'
FROM species_animal, developments_embryonary
WHERE developments_embryonary.name LIKE 'viv%'