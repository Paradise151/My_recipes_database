SELECT recipe_id AS Номер_блюда, 
       name_recipe as Название_блюда
FROM recipe;

SELECT d_t.name_dish_type AS Тип_блюда,
	   r.name_recipe AS Название_блюда,
       SUM(rs.cooking_time_minute) AS Время_готовки,
       r.number_of_servings AS Количество_порций,
        IF(MAX(CASE WHEN i_t.name_ingredient_type IN ('Мясо', 'Птица', 'Рыба', 'Субпродукты') THEN 1 ELSE 0 END) = 1, 
       'Нет', 
       'Да') AS Вегетарианское,
       r.recipe_description AS Описание_блюда
FROM  recipe_steps AS rs
	INNER JOIN step AS s USING(step_id)
    LEFT JOIN ingredient AS ing USING(ingredient_id)
    LEFT JOIN ingredient_type AS i_t USING(ingredient_type_id)
    LEFT JOIN  cold_preparation AS cp USING(cold_preparation_id) 
	LEFT JOIN  multicooker AS mc  USING(multicooker_id)
	LEFT JOIN  microwave AS mw USING(microwave_id) 
	LEFT JOIN oven AS o USING(oven_id)
	LEFT JOIN cooktop AS ct USING(cooktop_id)
    INNER JOIN recipe AS r USING (recipe_id)
    INNER JOIN dish_type AS d_t USING(dish_type_id)
GROUP BY r.recipe_id
ORDER BY name_dish_type;


/* Красивая распечатка конретного рецепта */

SELECT ROW_NUMBER() OVER (ORDER BY recipe_steps_id) AS step_number,
       r.name_recipe AS recipe,
       ing.name_ingredient,
       rs.pieces AS pieces,
       rs.weight_kg AS weight_kg,
       CASE 
           WHEN cp.name_mode IS NOT NULL THEN cp.name_mode
           WHEN o.name_mode IS NOT NULL THEN CONCAT('Духовка:', ' ',  o.name_mode)
           WHEN ct.name_mode IS NOT NULL THEN CONCAT('Плита:', ' ',  ct.name_mode)
           WHEN mw.name_mode IS NOT NULL THEN CONCAT('Микроволновка:', ' ',  mw.name_mode)
           WHEN mc.name_mode IS NOT NULL THEN CONCAT('Мультиварка:', ' ',  mc.name_mode)
	   END AS step,
       rs.cooking_time_minute AS cooking_time_minute,
       rs.temperature_celcius AS temperature_celcius,
       rs.oven_level_from_bottom AS oven_level_from_bottom,
	   rs.pressure AS pressure
FROM  recipe_steps AS rs
	INNER JOIN step AS s USING(step_id)
    LEFT JOIN ingredient AS ing USING(ingredient_id)
    LEFT JOIN  cold_preparation AS cp USING(cold_preparation_id) 
	LEFT JOIN  multicooker AS mc  USING(multicooker_id)
	LEFT JOIN  microwave AS mw USING(microwave_id) 
	LEFT JOIN oven AS o USING(oven_id)
	LEFT JOIN cooktop AS ct USING(cooktop_id)
    INNER JOIN recipe AS r USING (recipe_id)
WHERE r.name_recipe = "Гречка в мультиварке";



/* Красивая распечатка всех рецептов */

SELECT rs.recipe_steps_id,
       r.name_recipe AS recipe,
       ing.name_ingredient,
       rs.pieces AS pieces,
       rs.weight_kg AS weight_kg,
       CASE 
           WHEN cp.name_mode IS NOT NULL THEN cp.name_mode
           WHEN o.name_mode IS NOT NULL THEN CONCAT('Духовка:', ' ',  o.name_mode)
           WHEN ct.name_mode IS NOT NULL THEN CONCAT('Плита:', ' ',  ct.name_mode)
           WHEN mw.name_mode IS NOT NULL THEN CONCAT('Микроволновка:', ' ',  mw.name_mode)
           WHEN mc.name_mode IS NOT NULL THEN CONCAT('Мультиварка:', ' ',  mc.name_mode)
	   END AS step,
       rs.cooking_time_minute AS cooking_time_minute,
       rs.temperature_celcius AS temperature_celcius,
       rs.oven_level_from_bottom AS oven_level_from_bottom,
	   rs.pressure AS pressure
FROM  recipe_steps AS rs
	INNER JOIN step AS s USING(step_id)
    LEFT JOIN ingredient AS ing USING(ingredient_id)
    LEFT JOIN  cold_preparation AS cp USING(cold_preparation_id) 
	LEFT JOIN  multicooker AS mc  USING(multicooker_id)
	LEFT JOIN  microwave AS mw USING(microwave_id) 
	LEFT JOIN oven AS o USING(oven_id)
	LEFT JOIN cooktop AS ct USING(cooktop_id)
    INNER JOIN recipe AS r USING (recipe_id);
