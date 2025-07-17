

/* Куриная печень в сметанном соусе */
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Куриная печень в сметанном соусе'),  -- recipe_id
(SELECT ingredient_id FROM ingredient WHERE name_ingredient  = 'Лук'),  -- ingredient_id
1,  -- pieces
0.1,  -- weight_kg
(SELECT step_id  
 FROM step 
	 LEFT JOIN  cold_preparation USING(cold_preparation_id) 
	 LEFT JOIN  multicooker USING(multicooker_id)
	 LEFT JOIN  microwave USING(microwave_id) 
	 LEFT JOIN oven USING(oven_id)
	 LEFT JOIN cooktop USING(cooktop_id)
 WHERE cold_preparation.name_mode = 'Помыть'),   -- step_id
1.5,  -- cooking_time_minute
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Куриная печень в сметанном соусе'),  -- recipe_id
(SELECT ingredient_id FROM ingredient WHERE name_ingredient  = 'Лук'),  -- ingredient_id
NULL,  -- pieces
NULL,  -- weight_kg
(SELECT step_id  
 FROM step 
	 LEFT JOIN  cold_preparation USING(cold_preparation_id) 
	 LEFT JOIN  multicooker USING(multicooker_id)
	 LEFT JOIN  microwave USING(microwave_id) 
	 LEFT JOIN oven USING(oven_id)
	 LEFT JOIN cooktop USING(cooktop_id)
 WHERE cold_preparation.name_mode = 'Почистить'),   -- step_id
1,  -- cooking_time_minute
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Куриная печень в сметанном соусе'),  -- recipe_id
(SELECT ingredient_id FROM ingredient WHERE name_ingredient  = 'Лук'),  -- ingredient_id
NULL,  -- pieces
NULL,  -- weight_kg
(SELECT step_id  
 FROM step 
	 LEFT JOIN  cold_preparation USING(cold_preparation_id) 
	 LEFT JOIN  multicooker USING(multicooker_id)
	 LEFT JOIN  microwave USING(microwave_id) 
	 LEFT JOIN oven USING(oven_id)
	 LEFT JOIN cooktop USING(cooktop_id)
 WHERE cold_preparation.name_mode = 'Убрать у лука зелёный слой'),   -- step_id
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Куриная печень в сметанном соусе'),  -- recipe_id
(SELECT ingredient_id FROM ingredient WHERE name_ingredient  = 'Лук'),  -- ingredient_id
NULL,  -- pieces
NULL,  -- weight_kg
(SELECT step_id  
 FROM step 
	 LEFT JOIN  cold_preparation USING(cold_preparation_id) 
	 LEFT JOIN  multicooker USING(multicooker_id)
	 LEFT JOIN  microwave USING(microwave_id) 
	 LEFT JOIN oven USING(oven_id)
	 LEFT JOIN cooktop USING(cooktop_id)
 WHERE cold_preparation.name_mode = 'Порезать перьями'),   -- step_id
2,  -- cooking_time_minute
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Куриная печень в сметанном соусе'),  -- recipe_id
(SELECT ingredient_id FROM ingredient WHERE name_ingredient  = 'Подсолнечное масло'),  -- ingredient_id
3,  -- pieces
NULL,  -- weight_kg
(SELECT step_id  
 FROM step 
 LEFT JOIN  cold_preparation USING(cold_preparation_id) 
 LEFT JOIN  multicooker USING(multicooker_id)
 LEFT JOIN  microwave USING(microwave_id) 
 LEFT JOIN oven USING(oven_id)
 LEFT JOIN cooktop USING(cooktop_id)
 WHERE cold_preparation.name_mode = 'Поместить в мультиварку'),   -- step_id
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Куриная печень в сметанном соусе'),  -- recipe_id
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
 WHERE multicooker.name_mode = 'Разогреть мультиварку'),   -- step_id
NULL,  -- cooking_time_minute
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Куриная печень в сметанном соусе'),  -- recipe_id
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
 WHERE multicooker.name_mode = 'Жарка/Фритюр'),   -- step_id
4,  -- cooking_time_minute
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Куриная печень в сметанном соусе'),  -- recipe_id
(SELECT ingredient_id FROM ingredient WHERE name_ingredient  = 'Лук'),  -- ingredient_id
NULL,  -- pieces
NULL,  -- weight_kg
(SELECT step_id  
 FROM step 
	  LEFT JOIN  cold_preparation USING(cold_preparation_id) 
	  LEFT JOIN  multicooker USING(multicooker_id)
	  LEFT JOIN  microwave USING(microwave_id) 
	  LEFT JOIN oven USING(oven_id)
	  LEFT JOIN cooktop USING(cooktop_id)
 WHERE multicooker.name_mode = 'Обжаривать до мягкости'),   -- step_id
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Куриная печень в сметанном соусе'),  -- recipe_id
(SELECT ingredient_id FROM ingredient WHERE name_ingredient  = 'Лук'),  -- ingredient_id
NULL,  -- pieces
NULL,  -- weight_kg
(SELECT step_id  
 FROM step 
	  LEFT JOIN  cold_preparation USING(cold_preparation_id) 
	  LEFT JOIN  multicooker USING(multicooker_id)
	  LEFT JOIN  microwave USING(microwave_id) 
	  LEFT JOIN oven USING(oven_id)
	  LEFT JOIN cooktop USING(cooktop_id)
 WHERE multicooker.name_mode = 'Жарка/Фритюр'),   -- step_id
8,  -- cooking_time_minute
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Куриная печень в сметанном соусе'),  -- recipe_id
(SELECT ingredient_id FROM ingredient WHERE name_ingredient  = 'Лук'),  -- ingredient_id
NULL,  -- pieces
NULL,  -- weight_kg
(SELECT step_id  
 FROM step 
	  LEFT JOIN  cold_preparation USING(cold_preparation_id) 
	  LEFT JOIN  multicooker USING(multicooker_id)
	  LEFT JOIN  microwave USING(microwave_id) 
	  LEFT JOIN oven USING(oven_id)
	  LEFT JOIN cooktop USING(cooktop_id)
 WHERE cold_preparation.name_mode = 'Помешивать'),   -- step_id
NULL,  -- cooking_time_minute
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Куриная печень в сметанном соусе'),  -- recipe_id
(SELECT ingredient_id FROM ingredient WHERE name_ingredient  = 'Куриная печень'),  -- ingredient_id
1,  -- pieces
0.5,  -- weight_kg
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


/* Шаг №13 */
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Куриная печень в сметанном соусе'),  -- recipe_id
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
 WHERE multicooker.name_mode = 'Жарка/Фритюр'),   -- step_id
10,  -- cooking_time_minute
NULL,  -- temperature_celcius
NULL,  -- oven_level_from_bottom
NULL  -- pressure
);



/* Шаг №14 */
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Куриная печень в сметанном соусе'),  -- recipe_id
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
 WHERE cold_preparation.name_mode = 'Помешивать'),   -- step_id
NULL,  -- cooking_time_minute
NULL,  -- temperature_celcius
NULL,  -- oven_level_from_bottom
NULL  -- pressure
);


/* Шаг №15 */
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Куриная печень в сметанном соусе'),  -- recipe_id
(SELECT ingredient_id FROM ingredient WHERE name_ingredient  = 'Вода питьевая'),  -- ingredient_id
NULL,  -- pieces
0.200,  -- weight_kg
(SELECT step_id  
 FROM step 
	 LEFT JOIN  cold_preparation USING(cold_preparation_id) 
	 LEFT JOIN  multicooker USING(multicooker_id)
	 LEFT JOIN  microwave USING(microwave_id) 
	 LEFT JOIN oven USING(oven_id)
	 LEFT JOIN cooktop USING(cooktop_id)
 WHERE cold_preparation.name_mode = 'Положить/Налить в миску'),   -- step_id
1,  -- cooking_time_minute
NULL,  -- temperature_celcius
NULL,  -- oven_level_from_bottom
NULL  -- pressure
);


/* Шаг №16 */
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Куриная печень в сметанном соусе'),  -- recipe_id
(SELECT ingredient_id FROM ingredient WHERE name_ingredient  = 'Сметана'),  -- ingredient_id
5,  -- pieces
0.1,  -- weight_kg
(SELECT step_id  
 FROM step 
	 LEFT JOIN  cold_preparation USING(cold_preparation_id) 
	 LEFT JOIN  multicooker USING(multicooker_id)
	 LEFT JOIN  microwave USING(microwave_id) 
	 LEFT JOIN oven USING(oven_id)
	 LEFT JOIN cooktop USING(cooktop_id)
 WHERE cold_preparation.name_mode = 'Положить/Налить в миску'),   -- step_id
1,  -- cooking_time_minute
NULL,  -- temperature_celcius
NULL,  -- oven_level_from_bottom
NULL  -- pressure
);


/* Шаг №17 */
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Куриная печень в сметанном соусе'),  -- recipe_id
(SELECT ingredient_id FROM ingredient WHERE name_ingredient  = 'Соль'),  -- ingredient_id
0.5,  -- pieces
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


/* Шаг №18 */
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Куриная печень в сметанном соусе'),  -- recipe_id
(SELECT ingredient_id FROM ingredient WHERE name_ingredient  = 'Чёрный перец молотый'),  -- ingredient_id
NULL,  -- pieces
NULL,  -- weight_kg
(SELECT step_id  
 FROM step 
	 LEFT JOIN  cold_preparation USING(cold_preparation_id) 
	 LEFT JOIN  multicooker USING(multicooker_id)
	 LEFT JOIN  microwave USING(microwave_id) 
	 LEFT JOIN oven USING(oven_id)
	 LEFT JOIN cooktop USING(cooktop_id)
 WHERE cold_preparation.name_mode = 'Поперчить'),   -- step_id
1,  -- cooking_time_minute
NULL,  -- temperature_celcius
NULL,  -- oven_level_from_bottom
NULL  -- pressure
);


/* Шаг №19 */
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Куриная печень в сметанном соусе'),  -- recipe_id
(SELECT ingredient_id FROM ingredient WHERE name_ingredient  = 'Полученный ингредиент'),  -- ingredient_id
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
3,  -- cooking_time_minute
NULL,  -- temperature_celcius
NULL,  -- oven_level_from_bottom
NULL  -- pressure
);


/* Шаг №20 */
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Куриная печень в сметанном соусе'),  -- recipe_id
(SELECT ingredient_id FROM ingredient WHERE name_ingredient  = 'Полученный ингредиент'),  -- ingredient_id
NULL,  -- pieces
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


/* Шаг №21 */
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Куриная печень в сметанном соусе'),  -- recipe_id
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
 WHERE multicooker.name_mode = 'Тушение'),   -- step_id
20,  -- cooking_time_minute
NULL,  -- temperature_celcius
NULL,  -- oven_level_from_bottom
2  -- pressure
);