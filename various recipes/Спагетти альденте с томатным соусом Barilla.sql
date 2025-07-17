
/* Спагетти альденте с томатным соусом Barilla */
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Спагетти альденте с томатным соусом Barilla'),  -- recipe_id
NULL,  -- ingredient_id
NULL,  -- pieces
NULL,  -- weight_kg
(SELECT step_id  
 FROM step 
	  LEFT JOIN  cold_preparation USING(cold_preparation_id) 
	  LEFT JOIN  multicooker USING(multicooker_id)
	  LEFT JOIN  microwave USING(microwave_id) 
	  LEFT JOIN oven USING(oven_id)
	  LEFT JOIN cooktop USING(cooktop_id)
 WHERE cold_preparation.name_mode = 'Взять кастрюлю'),   -- step_id
NULL,  -- cooking_time_minute
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Спагетти альденте с томатным соусом Barilla'),  -- recipe_id
(SELECT ingredient_id FROM ingredient WHERE name_ingredient  = 'Вода из-под крана'),  -- ingredient_id
2,  -- pieces
4.0,  -- weight_kg
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Спагетти альденте с томатным соусом Barilla'),  -- recipe_id
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Спагетти альденте с томатным соусом Barilla'),  -- recipe_id
(SELECT ingredient_id FROM ingredient WHERE name_ingredient  = 'Подсолнечное масло'),  -- ingredient_id
2,  -- pieces
NULL,  -- weight_kg
(SELECT step_id  
 FROM step 
 LEFT JOIN  cold_preparation USING(cold_preparation_id) 
 LEFT JOIN  multicooker USING(multicooker_id)
 LEFT JOIN  microwave USING(microwave_id) 
 LEFT JOIN oven USING(oven_id)
 LEFT JOIN cooktop USING(cooktop_id)
 WHERE cold_preparation.name_mode = 'Добавить в общее блюдо'),   -- step_id
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Спагетти альденте с томатным соусом Barilla'),  -- recipe_id
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
 WHERE cooktop.name_mode = 'Вскипятить'),   -- step_id
13,  -- cooking_time_minute
NULL,  -- temperature_celcius
NULL,  -- oven_level_from_bottom
NULL  -- pressure
);


/* Шаг №6 */
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Спагетти альденте с томатным соусом Barilla'),  -- recipe_id
(SELECT ingredient_id FROM ingredient WHERE name_ingredient  = 'Спагетти Barilla'),  -- ingredient_id
1,  -- pieces
0.4,  -- weight_kg
(SELECT step_id  
 FROM step 
	  LEFT JOIN  cold_preparation USING(cold_preparation_id) 
	  LEFT JOIN  multicooker USING(multicooker_id)
	  LEFT JOIN  microwave USING(microwave_id) 
	  LEFT JOIN oven USING(oven_id)
	  LEFT JOIN cooktop USING(cooktop_id)
 WHERE cold_preparation.name_mode = 'Добавить в общее блюдо'),   -- step_id
1,  -- cooking_time_minute
NULL,  -- temperature_celcius
NULL,  -- oven_level_from_bottom
NULL  -- pressure
);




/* Шаг №7 */
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Спагетти альденте с томатным соусом Barilla'),  -- recipe_id
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
 WHERE cooktop.name_mode = 'Довести до кипения'),   -- step_id
2,  -- cooking_time_minute
NULL,  -- temperature_celcius
NULL,  -- oven_level_from_bottom
NULL  -- pressure
);


/* Шаг №8 */
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Спагетти альденте с томатным соусом Barilla'),  -- recipe_id
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
 WHERE cooktop.name_mode = 'Варить на среднем огне'),   -- step_id
10,  -- cooking_time_minute
NULL,  -- temperature_celcius
NULL,  -- oven_level_from_bottom
NULL  -- pressure
);


/* Шаг №9 */
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Спагетти альденте с томатным соусом Barilla'),  -- recipe_id
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
 WHERE cold_preparation.name_mode = 'Слить воду'),   -- step_id
NULL,  -- cooking_time_minute
NULL,  -- temperature_celcius
NULL,  -- oven_level_from_bottom
NULL  -- pressure
);


/* Шаг №10 */
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Спагетти альденте с томатным соусом Barilla'),  -- recipe_id
(SELECT ingredient_id FROM ingredient WHERE name_ingredient  = 'Томатный соус Barilla'),  -- ingredient_id
0.75,  -- pieces
0.300,  -- weight_kg
(SELECT step_id  
 FROM step 
 LEFT JOIN  cold_preparation USING(cold_preparation_id) 
 LEFT JOIN  multicooker USING(multicooker_id)
 LEFT JOIN  microwave USING(microwave_id) 
 LEFT JOIN oven USING(oven_id)
 LEFT JOIN cooktop USING(cooktop_id)
 WHERE cold_preparation.name_mode = 'Добавить в общее блюдо'),   -- step_id
1,  -- cooking_time_minute
NULL,  -- temperature_celcius
NULL,  -- oven_level_from_bottom
NULL  -- pressure
);


/* Шаг №11 */
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Спагетти альденте с томатным соусом Barilla'),  -- recipe_id
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
 WHERE cold_preparation.name_mode = 'Перемешать'),   -- step_id
1,  -- cooking_time_minute
NULL,  -- temperature_celcius
NULL,  -- oven_level_from_bottom
NULL  -- pressure
);


/* Шаг №12 */
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Спагетти альденте с томатным соусом Barilla'),  -- recipe_id
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
 WHERE cold_preparation.name_mode = 'Убрать с плиты'),   -- step_id
NULL,  -- cooking_time_minute
NULL,  -- temperature_celcius
NULL,  -- oven_level_from_bottom
NULL  -- pressure
);

