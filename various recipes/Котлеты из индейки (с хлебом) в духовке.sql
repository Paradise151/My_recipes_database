
/*Котлеты из индейки (с хлебом) в духовке */
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Котлеты из индейки (с хлебом) в духовке'),  -- recipe_id
(SELECT ingredient_id FROM ingredient WHERE name_ingredient  = 'Белый хлеб'),  -- ingredient_id
1,  -- pieces
0.150,  -- weight_kg
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Котлеты из индейки (с хлебом) в духовке'),  -- recipe_id
(SELECT ingredient_id FROM ingredient WHERE name_ingredient  = 'Белый хлеб'),  -- ingredient_id
NULL,  -- pieces
NULL,  -- weight_kg
(SELECT step_id  
 FROM step 
	 LEFT JOIN  cold_preparation USING(cold_preparation_id) 
	 LEFT JOIN  multicooker USING(multicooker_id)
	 LEFT JOIN  microwave USING(microwave_id) 
	 LEFT JOIN oven USING(oven_id)
	 LEFT JOIN cooktop USING(cooktop_id)
 WHERE cold_preparation.name_mode = 'Замочить в воде'),   -- step_id
8,  -- cooking_time_minute
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Котлеты из индейки (с хлебом) в духовке'),  -- recipe_id
(SELECT ingredient_id FROM ingredient WHERE name_ingredient  = 'Белый хлеб'),  -- ingredient_id
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Котлеты из индейки (с хлебом) в духовке'),  -- recipe_id
(SELECT ingredient_id FROM ingredient WHERE name_ingredient  = 'Белый хлеб'),  -- ingredient_id
NULL,  -- pieces
NULL,  -- weight_kg
(SELECT step_id  
 FROM step 
	 LEFT JOIN  cold_preparation USING(cold_preparation_id) 
	 LEFT JOIN  multicooker USING(multicooker_id)
	 LEFT JOIN  microwave USING(microwave_id) 
	 LEFT JOIN oven USING(oven_id)
	 LEFT JOIN cooktop USING(cooktop_id)
 WHERE cold_preparation.name_mode = 'Отжать жидкость'),   -- step_id
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Котлеты из индейки (с хлебом) в духовке'),  -- recipe_id
(SELECT ingredient_id FROM ingredient WHERE name_ingredient  = 'Фарш из индейки'),  -- ingredient_id
2,  -- pieces
0.9,  -- weight_kg
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Котлеты из индейки (с хлебом) в духовке'),  -- recipe_id
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Котлеты из индейки (с хлебом) в духовке'),  -- recipe_id
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Котлеты из индейки (с хлебом) в духовке'),  -- recipe_id
(SELECT ingredient_id FROM ingredient WHERE name_ingredient  = 'Сливочное масло'),  -- ingredient_id
NULL,  -- pieces
0.08,  -- weight_kg
(SELECT step_id  
 FROM step 
	 LEFT JOIN  cold_preparation USING(cold_preparation_id) 
	 LEFT JOIN  multicooker USING(multicooker_id)
	 LEFT JOIN  microwave USING(microwave_id) 
	 LEFT JOIN oven USING(oven_id)
	 LEFT JOIN cooktop USING(cooktop_id)
 WHERE cold_preparation.name_mode = 'Положить/Налить в чашку'),   -- step_id
NULL,  -- cooking_time_minute
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Котлеты из индейки (с хлебом) в духовке'),  -- recipe_id
(SELECT ingredient_id FROM ingredient WHERE name_ingredient  = 'Сливочное масло'),  -- ingredient_id
NULL,  -- pieces
NULL,  -- weight_kg
(SELECT step_id  
 FROM step 
	 LEFT JOIN  cold_preparation USING(cold_preparation_id) 
	 LEFT JOIN  multicooker USING(multicooker_id)
	 LEFT JOIN  microwave USING(microwave_id) 
	 LEFT JOIN oven USING(oven_id)
	 LEFT JOIN cooktop USING(cooktop_id)
 WHERE microwave.name_mode = '360 Вт'),   -- step_id
1,  -- cooking_time_minute
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Котлеты из индейки (с хлебом) в духовке'),  -- recipe_id
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Котлеты из индейки (с хлебом) в духовке'),  -- recipe_id
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
3,  -- cooking_time_minute
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Котлеты из индейки (с хлебом) в духовке'),  -- recipe_id
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
 WHERE oven.name_mode = 'Разогреть духовку'),   -- step_id
NULL,  -- cooking_time_minute
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Котлеты из индейки (с хлебом) в духовке'),  -- recipe_id
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
 WHERE oven.name_mode = 'Вентиляционный нагрев'),   -- step_id
6,  -- cooking_time_minute
180,  -- temperature_celcius
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Котлеты из индейки (с хлебом) в духовке'),  -- recipe_id
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
 WHERE cold_preparation.name_mode = 'Положить пергаментную бумагу на противень'),   -- step_id
1.5,  -- cooking_time_minute
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Котлеты из индейки (с хлебом) в духовке'),  -- recipe_id
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
 WHERE cold_preparation.name_mode = 'Сделать котлеты'),   -- step_id
5,  -- cooking_time_minute
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Котлеты из индейки (с хлебом) в духовке'),  -- recipe_id
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
 WHERE oven.name_mode = 'Вентиляционный нагрев'),   -- step_id
32,  -- cooking_time_minute
180,  -- temperature_celcius
2,  -- oven_level_from_bottom
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
(SELECT recipe_id FROM recipe WHERE name_recipe = 'Котлеты из индейки (с хлебом) в духовке'),  -- recipe_id
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
 WHERE cold_preparation.name_mode = 'Вытащить из духовки'),   -- step_id
1,  -- cooking_time_minute
NULL,  -- temperature_celcius
NULL,  -- oven_level_from_bottom
NULL  -- pressure
);
