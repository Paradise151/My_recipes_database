
-- DROP PROCEDURE InsertRecipeStep;

DELIMITER //

CREATE PROCEDURE InsertRecipeStep(
    IN p_recipe_name VARCHAR(50),
    IN p_ingredient_name VARCHAR(50),
    IN p_pieces  DECIMAL(3,2),
    IN p_weight_kg DECIMAL(6,3),
    IN p_step_mode VARCHAR(50),
    IN p_cooking_time  DECIMAL(6,2),
    IN p_temperature INT,
    IN p_oven_level INT,
    IN p_pressure INT,
    IN p_appliance_type ENUM('cold_preparation', 'multicooker', 'microwave', 'oven', 'cooktop')
)
BEGIN
    DECLARE v_recipe_id INT;
    DECLARE v_ingredient_id INT DEFAULT NULL;
    DECLARE v_step_id INT;

    -- Получаем ID рецепта
    SELECT recipe_id  INTO v_recipe_id 
    FROM recipe 
    WHERE name_recipe = p_recipe_name
    LIMIT 1;

    IF v_recipe_id IS NULL THEN
       SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Рецепт не найден';
    END IF;

    -- Получаем ID ингредиента (если передан)
    IF p_ingredient_name IS NOT NULL THEN
        SELECT ingredient_id INTO v_ingredient_id 
        FROM ingredient 
        WHERE name_ingredient = p_ingredient_name
        LIMIT 1;
    END IF;

    -- Получаем ID шага по типу прибора
    CASE p_appliance_type
        WHEN 'cold_preparation' THEN
            SELECT s.step_id INTO v_step_id
            FROM step AS s
                 JOIN cold_preparation AS c_p USING(cold_preparation_id)
            WHERE c_p.name_mode = p_step_mode
            LIMIT 1;
        
        WHEN 'oven' THEN
            SELECT s.step_id INTO v_step_id
            FROM step AS s
                 JOIN oven AS o USING(oven_id)
            WHERE o.name_mode = p_step_mode
            LIMIT 1;
            
		WHEN 'multicooker' THEN
            SELECT s.step_id INTO v_step_id
            FROM step AS s
                 JOIN multicooker AS m  USING(multicooker_id)
            WHERE m.name_mode = p_step_mode
            LIMIT 1;
        
        WHEN 'microwave' THEN
            SELECT step_id INTO v_step_id
            FROM step 
                 JOIN microwave  USING(microwave_id)
            WHERE name_mode = p_step_mode
            LIMIT 1;

        WHEN 'cooktop' THEN
            SELECT step_id INTO v_step_id
            FROM step 
                 JOIN cooktop  USING(cooktop_id)
            WHERE name_mode = p_step_mode
            LIMIT 1;

    END CASE;


    -- Вставляем данные
    INSERT INTO recipe_steps(
        recipe_id,
        ingredient_id,
        pieces,
        weight_kg,
        step_id,
        cooking_time_minute,
        temperature_celcius,
        oven_level_from_bottom,
        pressure
    ) VALUES (
        v_recipe_id,
        v_ingredient_id,
        p_pieces,
        p_weight_kg,
        v_step_id,
        p_cooking_time,
        p_temperature,
        p_oven_level,
        p_pressure
    );
END //

DELIMITER ;