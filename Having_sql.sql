SELECT species_animal.id AS Id, species_animal.name AS 'Animal',
population AS 'Ejemplares', forms_of_displacement.name AS 'Desplazamiento',
developments_embryonary.name AS 'Reproducción'
FROM species_animal
 JOIN forms_of_displacement ON forms_of_desplace_id = forms_of_displacement.id
 JOIN developments_embryonary ON developments_embrionario_id = developments_embryonary.id
HAVING population > 100000