SELECT species_animal.name AS 'Animal', population AS 'Ejemplares',
forms_of_displacement.name AS 'Desplazamiento', types_of_food.name AS 'Alimentacion'
FROM species_animal
 JOIN forms_of_displacement ON forms_of_desplace_id = forms_of_displacement.id
 JOIN types_of_food ON types_of_food_id = types_of_food.id
GROUP BY population