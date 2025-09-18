
/* Индейка в сметанно-хренном соусе UPD INSERT */

/* Шаг №1 */
CALL InsertRecipeStep(
    'Индейка в хренно-сметанном соусе',  -- recipe_name
    'Грудка индейки',                               -- ingredient_name
    2,                                       -- pieces
    1.0,                                       -- weight_kg
    'Помыть',                          -- step_mode
    2,                                          -- cooking_time
    NULL,                                       -- temperature
    NULL,                                       -- oven_level
    NULL,                                       -- pressure
    'cold_preparation'                                      -- appliance_type
);


/* Шаг №2 */
CALL InsertRecipeStep(
    'Индейка в хренно-сметанном соусе',  -- recipe_name
    'Грудка индейки',                               -- ingredient_name
    NULL,                                       -- pieces
    NULL,                                       -- weight_kg
    'Положить в стеклянную форму',                          -- step_mode
    2,                                          -- cooking_time
    NULL,                                       -- temperature
    NULL,                                       -- oven_level
    NULL,                                       -- pressure
    'cold_preparation'                                      -- appliance_type
);


/* Шаг №3 */
CALL InsertRecipeStep(
    'Индейка в хренно-сметанном соусе',  -- recipe_name
    'Полученное блюдо',                               -- ingredient_name
    NULL,                                       -- pieces
    NULL,                                       -- weight_kg
    'Посолить',                          -- step_mode
    1,                                          -- cooking_time
    NULL,                                       -- temperature
    NULL,                                       -- oven_level
    NULL,                                       -- pressure
    'cold_preparation'                                      -- appliance_type
);


/* Шаг №4 */
CALL InsertRecipeStep(
    'Индейка в хренно-сметанном соусе',  -- recipe_name
    'Полученное блюдо',                               -- ingredient_name
    NULL,                                       -- pieces
    NULL,                                       -- weight_kg
    'Поперчить',                          -- step_mode
    1,                                          -- cooking_time
    NULL,                                       -- temperature
    NULL,                                       -- oven_level
    NULL,                                       -- pressure
    'cold_preparation'                                      -- appliance_type
);


/* Шаг №5 */
CALL InsertRecipeStep(
    'Индейка в хренно-сметанном соусе',  -- recipe_name
    'Сметана',                               -- ingredient_name
    4,                                       -- pieces
    0.08,                                       -- weight_kg
    'Добавить в общее блюдо',                          -- step_mode
    2,                                          -- cooking_time
    NULL,                                       -- temperature
    NULL,                                       -- oven_level
    NULL,                                       -- pressure
    'cold_preparation'                                      -- appliance_type
);


/* Шаг №6 */
CALL InsertRecipeStep(
    'Индейка в хренно-сметанном соусе',  -- recipe_name
    'Тёртый хрен',                               -- ingredient_name
    4,                                       -- pieces
    0.02,                                       -- weight_kg
    'Добавить в общее блюдо',                          -- step_mode
    1,                                          -- cooking_time
    NULL,                                       -- temperature
    NULL,                                       -- oven_level
    NULL,                                       -- pressure
    'cold_preparation'                                      -- appliance_type
);


/* Шаг №7 */
CALL InsertRecipeStep(
    'Индейка в хренно-сметанном соусе',  -- recipe_name
    'Полученное блюдо',                               -- ingredient_name
    NULL,                                       -- pieces
    NULL,                                       -- weight_kg
    'Смазать соусом',                          -- step_mode
    2,                                          -- cooking_time
    NULL,                                       -- temperature
    NULL,                                       -- oven_level
    NULL,                                       -- pressure
    'cold_preparation'                                      -- appliance_type
);


/* Шаг №8 */
CALL InsertRecipeStep(
    'Индейка в хренно-сметанном соусе',  -- recipe_name
    'Полученное блюдо',                               -- ingredient_name
    NULL,                                       -- pieces
    NULL,                                       -- weight_kg
    'Накрыть форму фольгой',                          -- step_mode
    2,                                          -- cooking_time
    NULL,                                       -- temperature
    NULL,                                       -- oven_level
    NULL,                                       -- pressure
    'cold_preparation'                                      -- appliance_type
);


/* Шаг №9 */
CALL InsertRecipeStep(
    'Индейка в хренно-сметанном соусе',  -- recipe_name
    NULL,                               -- ingredient_name
    NULL,                                       -- pieces
    NULL,                                       -- weight_kg
    'Разогреть духовку',                  -- step_mode
    7,                                          -- cooking_time
    NULL,                                       -- temperature
    NULL,                                       -- oven_level
    NULL,                                       -- pressure
    'oven'                                      -- appliance_type
);


/* Шаг №10 */
CALL InsertRecipeStep(
    'Индейка в хренно-сметанном соусе',  -- recipe_name
    NULL,                               -- ingredient_name
    NULL,                                       -- pieces
    NULL,                                       -- weight_kg
    'Вентиляционный нагрев',                  -- step_mode
    25,                                          -- cooking_time
    180,                                       -- temperature
    3,                                       -- oven_level
    NULL,                                       -- pressure
    'oven'                                      -- appliance_type
);


/* Шаг №11 */
CALL InsertRecipeStep(
    'Индейка в хренно-сметанном соусе',  -- recipe_name
    'Полученное блюдо',                               -- ingredient_name
    NULL,                                       -- pieces
    NULL,                                       -- weight_kg
    'Снять фольгу',                          -- step_mode
    1,                                          -- cooking_time
    NULL,                                       -- temperature
    NULL,                                       -- oven_level
    NULL,                                       -- pressure
    'cold_preparation'                                      -- appliance_type
);


/* Шаг №12 */
CALL InsertRecipeStep(
    'Индейка в хренно-сметанном соусе',  -- recipe_name
    NULL,                               -- ingredient_name
    NULL,                                       -- pieces
    NULL,                                       -- weight_kg
    'Вентиляционный нагрев',                  -- step_mode
    10,                                          -- cooking_time
    180,                                       -- temperature
    3,                                       -- oven_level
    NULL,                                       -- pressure
    'oven'                                      -- appliance_type
);


/* Шаг №13 */
CALL InsertRecipeStep(
    'Индейка в хренно-сметанном соусе',  -- recipe_name
    NULL,                               -- ingredient_name
    NULL,                                       -- pieces
    NULL,                                       -- weight_kg
    'Вентиляционный нагрев',                  -- step_mode
    20,                                          -- cooking_time
    170,                                       -- temperature
    3,                                       -- oven_level
    NULL,                                       -- pressure
    'oven'                                      -- appliance_type
);


/* Шаг №14 */
CALL InsertRecipeStep(
    'Индейка в хренно-сметанном соусе',  -- recipe_name
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