
/* Гречка в мультиварке */
/* Шаг №1 */
INSERT INTO recipe_steps(
    recipe_id,
    ingredient_id,
    pieces,
    weight_kg,
    step_id,
    cooking_time_minute,
    temperature_celcius,
    oven_level_from_bottom,
    pressure)
VALUES
(
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Гречка в мультиварке'),  -- recipe_id
(SELECT ingredient_id FROM ingredient WHERE name_ingredient  = 'Гречка'),  -- ingredient_id
1,  -- pieces
0.350,  -- weight_kg
(SELECT step_id  
 FROM step 
	  LEFT JOIN  cold_preparation USING(cold_preparation_id) 
	  LEFT JOIN  multicooker USING(multicooker_id)
	  LEFT JOIN  microwave USING(microwave_id) 
	  LEFT JOIN oven USING(oven_id)
	  LEFT JOIN cooktop USING(cooktop_id)
 WHERE cold_preparation.name_mode = 'Помыть'),   -- step_id
3,  -- cooking_time_minute
NULL,  -- temperature_celcius
NULL,  -- oven_level_from_bottom
NULL  -- pressure
);


/* Шаг №2 */
INSERT INTO recipe_steps(
    recipe_id,
    ingredient_id,
    pieces,
    weight_kg,
    step_id,
    cooking_time_minute,
    temperature_celcius,
    oven_level_from_bottom,
    pressure)
VALUES
(
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Гречка в мультиварке'),  -- recipe_id
(SELECT ingredient_id FROM ingredient WHERE name_ingredient  = 'Гречка'),  -- ingredient_id
NULL,  -- pieces
NULL,  -- weight_kg
(SELECT step_id  
 FROM step 
	 LEFT JOIN  cold_preparation USING(cold_preparation_id) 
	 LEFT JOIN  multicooker USING(multicooker_id)
	 LEFT JOIN  microwave USING(microwave_id) 
	 LEFT JOIN oven USING(oven_id)
	 LEFT JOIN cooktop USING(cooktop_id)
 WHERE cold_preparation.name_mode = 'Поместить в мультиварку'),   -- step_id
NULL,  -- cooking_time_minute
NULL,  -- temperature_celcius
NULL,  -- oven_level_from_bottom
NULL  -- pressure
);


/* Шаг №3 */
INSERT INTO recipe_steps(
    recipe_id,
    ingredient_id,
    pieces,
    weight_kg,
    step_id,
    cooking_time_minute,
    temperature_celcius,
    oven_level_from_bottom,
    pressure)
VALUES
(
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Гречка в мультиварке'),  -- recipe_id
(SELECT ingredient_id FROM ingredient WHERE name_ingredient  = 'Вода питьевая'),  -- ingredient_id
1.5,  -- pieces
0.5,  -- weight_kg
(SELECT step_id  
 FROM step 
 LEFT JOIN  cold_preparation USING(cold_preparation_id) 
 LEFT JOIN  multicooker USING(multicooker_id)
 LEFT JOIN  microwave USING(microwave_id) 
 LEFT JOIN oven USING(oven_id)
 LEFT JOIN cooktop USING(cooktop_id)
 WHERE cold_preparation.name_mode = 'Добавить воды'),   -- step_id
2,  -- cooking_time_minute
NULL,  -- temperature_celcius
NULL,  -- oven_level_from_bottom
NULL  -- pressure
);


/* Шаг №4 */
INSERT INTO recipe_steps(
    recipe_id,
    ingredient_id,
    pieces,
    weight_kg,
    step_id,
    cooking_time_minute,
    temperature_celcius,
    oven_level_from_bottom,
    pressure)
VALUES
(
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Гречка в мультиварке'),  -- recipe_id
(SELECT ingredient_id FROM ingredient WHERE name_ingredient  = 'Соль'),  -- ingredient_id
NULL,  -- pieces
NULL,  -- weight_kg
(SELECT step_id  
 FROM step 
 LEFT JOIN  cold_preparation USING(cold_preparation_id) 
 LEFT JOIN  multicooker USING(multicooker_id)
 LEFT JOIN  microwave USING(microwave_id) 
 LEFT JOIN oven USING(oven_id)
 LEFT JOIN cooktop USING(cooktop_id)
 WHERE cold_preparation.name_mode = 'Посолить'),   -- step_id
1,  -- cooking_time_minute
NULL,  -- temperature_celcius
NULL,  -- oven_level_from_bottom
NULL  -- pressure
);


/* Шаг №5 */
INSERT INTO recipe_steps(
    recipe_id,
    ingredient_id,
    pieces,
    weight_kg,
    step_id,
    cooking_time_minute,
    temperature_celcius,
    oven_level_from_bottom,
    pressure)
VALUES
(
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Гречка в мультиварке'),  -- recipe_id
(SELECT ingredient_id FROM ingredient WHERE name_ingredient  = 'Полученное блюдо'),  -- ingredient_id
NULL,  -- pieces
NULL,  -- weight_kg
(SELECT step_id  
 FROM step 
	  LEFT JOIN  cold_preparation USING(cold_preparation_id) 
	  LEFT JOIN  multicooker USING(multicooker_id)
	  LEFT JOIN  microwave USING(microwave_id) 
	  LEFT JOIN oven USING(oven_id)
	  LEFT JOIN cooktop USING(cooktop_id)
 WHERE multicooker.name_mode = 'Крупы/Рис'),   -- step_id
10,  -- cooking_time_minute
NULL,  -- temperature_celcius
NULL,  -- oven_level_from_bottom
5  -- pressure
);
