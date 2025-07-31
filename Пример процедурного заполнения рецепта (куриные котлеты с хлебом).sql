
/* Котлеты из индейки (с хлебом) в духовке UPD INSERT */

/* Шаг №1 */
CALL InsertRecipeStep(
    'Котлеты из индейки (с хлебом) в духовке',  -- recipe_name
    'Белый хлеб',                               -- ingredient_name
    1,                                       -- pieces
    0.150,                                       -- weight_kg
    'Положить/Налить в миску',                          -- step_mode
    1,                                          -- cooking_time
    NULL,                                       -- temperature
    NULL,                                       -- oven_level
    NULL,                                       -- pressure
    'cold_preparation'                                      -- appliance_type
);


/* Шаг №2 */
CALL InsertRecipeStep(
    'Котлеты из индейки (с хлебом) в духовке',  -- recipe_name
    'Белый хлеб',                               -- ingredient_name
    NULL,                                       -- pieces
    NULL,                                       -- weight_kg
    'Замочить в воде',                  -- step_mode
    8,                                          -- cooking_time
    NULL,                                       -- temperature
    NULL,                                       -- oven_level
    NULL,                                       -- pressure
    'cold_preparation'                                      -- appliance_type
);


/* Шаг №3 */
CALL InsertRecipeStep(
    'Котлеты из индейки (с хлебом) в духовке',  -- recipe_name
    'Белый хлеб',                               -- ingredient_name
    NULL,                                       -- pieces
    NULL,                                       -- weight_kg
    'Слить воду',                  -- step_mode
    1,                                          -- cooking_time
    NULL,                                       -- temperature
    NULL,                                       -- oven_level
    NULL,                                       -- pressure
    'cold_preparation'                                      -- appliance_type
);


/* Шаг №4 */
CALL InsertRecipeStep(
    'Котлеты из индейки (с хлебом) в духовке',  -- recipe_name
    'Белый хлеб',                               -- ingredient_name
    NULL,                                       -- pieces
    NULL,                                       -- weight_kg
    'Отжать жидкость',                  -- step_mode
    1,                                          -- cooking_time
    NULL,                                       -- temperature
    NULL,                                       -- oven_level
    NULL,                                       -- pressure
    'cold_preparation'                                      -- appliance_type
);


/* Шаг №5 */
CALL InsertRecipeStep(
    'Котлеты из индейки (с хлебом) в духовке',  -- recipe_name
    'Фарш из индейки',                               -- ingredient_name
    2,                                       -- pieces
    0.9,                                       -- weight_kg
    'Добавить в общее блюдо',                  -- step_mode
    1,                                          -- cooking_time
    NULL,                                       -- temperature
    NULL,                                       -- oven_level
    NULL,                                       -- pressure
    'cold_preparation'                                      -- appliance_type
);


/* Шаг №6 */
CALL InsertRecipeStep(
    'Котлеты из индейки (с хлебом) в духовке',  -- recipe_name
    'Соль',                               -- ingredient_name
    NULL,                                       -- pieces
    NULL,                                       -- weight_kg
    'Посолить',                  -- step_mode
    1,                                          -- cooking_time
    NULL,                                       -- temperature
    NULL,                                       -- oven_level
    NULL,                                       -- pressure
    'cold_preparation'                                      -- appliance_type
);


/* Шаг №7 */
CALL InsertRecipeStep(
    'Котлеты из индейки (с хлебом) в духовке',  -- recipe_name
    'Чёрный перец молотый',                               -- ingredient_name
    NULL,                                       -- pieces
    NULL,                                       -- weight_kg
    'Поперчить',                  -- step_mode
    1,                                          -- cooking_time
    NULL,                                       -- temperature
    NULL,                                       -- oven_level
    NULL,                                       -- pressure
    'cold_preparation'                                      -- appliance_type
);


/* Шаг №8 */
CALL InsertRecipeStep(
    'Котлеты из индейки (с хлебом) в духовке',  -- recipe_name
    'Сливочное масло',                               -- ingredient_name
    NULL,                                       -- pieces
    0.08,                                       -- weight_kg
    'Положить/Налить в чашку',                  -- step_mode
    1,                                          -- cooking_time
    NULL,                                       -- temperature
    NULL,                                       -- oven_level
    NULL,                                       -- pressure
    'cold_preparation'                                      -- appliance_type
);


/* Шаг №9 */
CALL InsertRecipeStep(
    'Котлеты из индейки (с хлебом) в духовке',  -- recipe_name
    'Сливочное масло',                               -- ingredient_name
    NULL,                                       -- pieces
    NULL,                                       -- weight_kg
    '360 Вт',                  -- step_mode
    1,                                          -- cooking_time
    NULL,                                       -- temperature
    NULL,                                       -- oven_level
    NULL,                                       -- pressure
    'microwave'                                      -- appliance_type
);


/* Шаг №10 */
CALL InsertRecipeStep(
    'Котлеты из индейки (с хлебом) в духовке',  -- recipe_name
    'Полученный ингредиент',                               -- ingredient_name
    NULL,                                       -- pieces
    NULL,                                       -- weight_kg
    'Добавить в общее блюдо',                  -- step_mode
    1,                                          -- cooking_time
    NULL,                                       -- temperature
    NULL,                                       -- oven_level
    NULL,                                       -- pressure
    'cold_preparation'                                      -- appliance_type
);


/* Шаг №11 */
CALL InsertRecipeStep(
    'Котлеты из индейки (с хлебом) в духовке',  -- recipe_name
    'Полученное блюдо',                               -- ingredient_name
    NULL,                                       -- pieces
    NULL,                                       -- weight_kg
    'Перемешать',                  -- step_mode
    3,                                          -- cooking_time
    NULL,                                       -- temperature
    NULL,                                       -- oven_level
    NULL,                                       -- pressure
    'cold_preparation'                                      -- appliance_type
);


/* Шаг №12 */
CALL InsertRecipeStep(
    'Котлеты из индейки (с хлебом) в духовке',  -- recipe_name
    NULL,                               -- ingredient_name
    NULL,                                       -- pieces
    NULL,                                       -- weight_kg
    'Разогреть духовку',                  -- step_mode
    NULL,                                          -- cooking_time
    NULL,                                       -- temperature
    NULL,                                       -- oven_level
    NULL,                                       -- pressure
    'oven'                                      -- appliance_type
);


/* Шаг №13 */
CALL InsertRecipeStep(
    'Котлеты из индейки (с хлебом) в духовке',  -- recipe_name
    NULL,                               -- ingredient_name
    NULL,                                       -- pieces
    NULL,                                       -- weight_kg
    'Вентиляционный нагрев',                  -- step_mode
    6,                                          -- cooking_time
    180,                                       -- temperature
    NULL,                                       -- oven_level
    NULL,                                       -- pressure
    'oven'                                      -- appliance_type
);


/* Шаг №14 */
CALL InsertRecipeStep(
    'Котлеты из индейки (с хлебом) в духовке',  -- recipe_name
    NULL,                               -- ingredient_name
    NULL,                                       -- pieces
    NULL,                                       -- weight_kg
    'Положить пергаментную бумагу на противень',                  -- step_mode
    1.5,                                          -- cooking_time
    180,                                       -- temperature
    NULL,                                       -- oven_level
    NULL,                                       -- pressure
    'cold_preparation'                                      -- appliance_type
);


/* Шаг №15 */
CALL InsertRecipeStep(
    'Котлеты из индейки (с хлебом) в духовке',  -- recipe_name
    'Полученное блюдо',                               -- ingredient_name
    NULL,                                       -- pieces
    NULL,                                       -- weight_kg
    'Сделать котлеты',                  -- step_mode
    5,                                          -- cooking_time
    NULL,                                       -- temperature
    NULL,                                       -- oven_level
    NULL,                                       -- pressure
    'cold_preparation'                                      -- appliance_type
);


/* Шаг №16 */
CALL InsertRecipeStep(
    'Котлеты из индейки (с хлебом) в духовке',  -- recipe_name
    'Полученное блюдо',                               -- ingredient_name
    NULL,                                       -- pieces
    NULL,                                       -- weight_kg
    'Вентиляционный нагрев',                  -- step_mode
    32,                                          -- cooking_time
    180,                                       -- temperature
    2,                                       -- oven_level
    NULL,                                       -- pressure
    'oven'                                      -- appliance_type
);


/* Шаг №17 */
CALL InsertRecipeStep(
    'Котлеты из индейки (с хлебом) в духовке',  -- recipe_name
    'Полученное блюдо',                               -- ingredient_name
    NULL,                                       -- pieces
    NULL,                                       -- weight_kg
    'Вытащить из духовки',                  -- step_mode
    1,                                          -- cooking_time
    NULL,                                       -- temperature
    NULL,                                       -- oven_level
    NULL,                                       -- pressure
    'cold_preparation'                                      -- appliance_type
);