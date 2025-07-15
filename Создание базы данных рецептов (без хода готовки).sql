
/* Создание стуктуры базы данных рецептов*/

CREATE table ingredient_type(
	ingredient_type_id INT PRimary key AUTO_INCREMENT,
  name_ingredient_type VARCHAR(30));


CREATE table ingredient(
     ingredient_id INT PRIMARY KEY AUTO_INCREMENT,
     name_ingredient VARCHAR(50),
     ingredient_type_id INT,
     FOREIGN KEY (ingredient_type_id) REFERENCES ingredient_type (ingredient_type_id));

CREATE table author(
	author_id INT PRimary key AUTO_INCREMENT,
    name_author VARCHAR(30));
    

CREATE table recipe(
	recipe_id INT primary key AUTO_INCREMENT,
    name_recipe VARCHAR(50),
    number_of_servings INT,
    author_id INT,
    description VARCHAR(100),
    FOREIGN KEY (author_id) REFERENCES author(author_id));



CREATE table microwave(
	microwave_id INT PRIMARY KEY AUTO_INCREMENT,
    name_mode VARCHAR(50));


create table oven(
	oven_id INT PRIMARY KEY AUTO_INCREMENT,
    name_mode VARCHAR(50));


create table cooktop(
	cooktop_id INT primary key AUTO_INCREMENT,
    name_mode VARCHAR(50));


create table multicooker(
	multicooker_id INT primary key AUTO_INCREMENT,
    name_mode VARCHAR(50));





create table cold_preparation(
	cold_preparation_id INT primary key AUTO_INCREMENT,
    name_mode VARCHAR(50));


create table step(
	step_id INT PRIMARY KEY AUTO_INCREMENT,
    cold_preparation_id INT,
    cooktop_id INT,
    multicooker_id INT,
    oven_id INT,
    microwave_id INT,
    FOREIGN KEY (microwave_id) REFERENCES microwave(microwave_id),
    FOREIGN KEY (cold_preparation_id) REFERENCES cold_preparation(cold_preparation_id),
    FOREIGN KEY (oven_id) REFERENCES oven (oven_id),
    FOREIGN KEY (cooktop_id) REFERENCES cooktop (cooktop_id),
    FOREIGN KEY (multicooker_id) REFERENCES multicooker (multicooker_id));




CREATE table recipe_steps(
	recipe_steps_id INT primary key AUTO_INCREMENT,
    recipe_id INT,
    ingredient_id INT,
    pieces DECIMAL(3,2),
    weight_kg DECIMAL(6, 3),
    step_id INT,
    cooking_time_minute DECIMAL(6,2),
    temperature_celcius INT,
    oven_level_from_bottom INT,
    pressure INT,
    foreign key (recipe_id) references recipe(recipe_id),
    foreign key (step_id) references step(step_id),
    foreign key (ingredient_id) references ingredient(ingredient_id));



/* Заполнение таблиц без внешних ключей*/

INSERT INTO author(name_author)
VALUES
('Каменский А.М.'),
('Каменский В.М.'),
('Каменский М.Ю.');



INSERT INTO recipe(name_recipe, author_id)
VALUES
('Мясо по-французски', 
 (SELECT author_id FROM author WHERE name_author  = 'Каменский А.М.')),
('Рис в мультиварке',
 (SELECT author_id FROM author WHERE name_author  = 'Каменский А.М.')),
('Перловка в мультиварке',
 (SELECT author_id FROM author WHERE name_author  = 'Каменский А.М.')),
('Бургерные котлеты',
 (SELECT author_id FROM author WHERE name_author  = 'Каменский А.М.')),
('Суп из замороженных овощей',
 (SELECT author_id FROM author WHERE name_author  = 'Каменский А.М.')),
('Суп Греческий с орзо и пряными травами Yelli',
 (SELECT author_id FROM author WHERE name_author  = 'Каменский В.М.')),
('Спагетти альденте с томатным соусом Barilla',
 (SELECT author_id FROM author WHERE name_author  = 'Каменский В.М.')),
 ('Котлеты из индейки (с хлебом) в духовке',
 (SELECT author_id FROM author WHERE name_author  = 'Каменский А.М.')),
('Куриная печень в сметанном соусе',
 (SELECT author_id FROM author WHERE name_author  = 'Каменский А.М.')),
('Картофель бейби в духовке',
 (SELECT author_id FROM author WHERE name_author  = 'Каменский А.М.')),
 ('Гречка в мультиварке',
 (SELECT author_id FROM author WHERE name_author  = 'Каменский А.М.'));

INSERT INTO ingredient_type(name_ingredient_type)
VALUES
('Специи'),
('Овощи'),
('Фрукты'),
('Мясо'),
('Птица'),
('Рыба'),
('Соус'),
('Крупа'),
('Растительное пищевое масло'),
('Вода'),
('Готовый продукт'),
('Полуфабрикат'),
('Макароны'),
('Хлеб'),
('Молочная продукция'),
('Субпродукты');



INSERT INTO ingredient(name_ingredient, ingredient_type_id)
VALUES
('Полученное блюдо', NULL),
('Свинина', 
 (SELECT ingredient_type_id FROM ingredient_type WHERE name_ingredient_type = 'Мясо')),
('Свинина: Шея', 
 (SELECT ingredient_type_id FROM ingredient_type WHERE name_ingredient_type = 'Мясо')),
('Чёрный перец',  
 (SELECT ingredient_type_id FROM ingredient_type WHERE name_ingredient_type = 'Специи')),
('Соль',  
 (SELECT ingredient_type_id FROM ingredient_type WHERE name_ingredient_type = 'Специи')),
('Чёрный перец молотый',  
 (SELECT ingredient_type_id FROM ingredient_type WHERE name_ingredient_type = 'Специи')),
('Лук',  
 (SELECT ingredient_type_id FROM ingredient_type WHERE name_ingredient_type = 'Овощи')),
('Майонез', 
 (SELECT ingredient_type_id FROM ingredient_type WHERE name_ingredient_type = 'Соус')),
('Помидоры', 
 (SELECT ingredient_type_id FROM ingredient_type WHERE name_ingredient_type = 'Овощи')),
('Помидоры розовые', 
 (SELECT ingredient_type_id FROM ingredient_type WHERE name_ingredient_type = 'Овощи')),
('Тёртый сыр', NULL), 
('Подсолнечное масло',  
 (SELECT ingredient_type_id FROM ingredient_type WHERE name_ingredient_type = 'Растительное пищевое масло')),
('Рис', 
 (SELECT ingredient_type_id FROM ingredient_type WHERE name_ingredient_type = 'Крупа')),
('Перловка', 
 (SELECT ingredient_type_id FROM ingredient_type WHERE name_ingredient_type = 'Крупа')),
('Гречка', 
 (SELECT ingredient_type_id FROM ingredient_type WHERE name_ingredient_type = 'Крупа')),
('Вода питьевая', 
(SELECT ingredient_type_id FROM ingredient_type WHERE name_ingredient_type = 'Вода')),
('Фарш из говядины', 
 (SELECT ingredient_type_id FROM ingredient_type WHERE name_ingredient_type = 'Мясо')),
('Фарш из свинины', 
 (SELECT ingredient_type_id FROM ingredient_type WHERE name_ingredient_type = 'Мясо')),
('Фарш из курицы',
 (SELECT ingredient_type_id FROM ingredient_type WHERE name_ingredient_type = 'Мясо')),
('Фарш из индейки',  
 (SELECT ingredient_type_id FROM ingredient_type WHERE name_ingredient_type = 'Мясо')),
('Приправа для шашлыка Кухенвиль', 
 (SELECT ingredient_type_id FROM ingredient_type WHERE name_ingredient_type = 'Специи')),
('Суп Греческий с орзо и пряными травами Yelli', 
 (SELECT ingredient_type_id FROM ingredient_type WHERE name_ingredient_type = 'Готовый продукт')),
('Замороженные овощи', 
 (SELECT ingredient_type_id FROM ingredient_type WHERE name_ingredient_type = 'Овощи')),
('Броколли', 
 (SELECT ingredient_type_id FROM ingredient_type WHERE name_ingredient_type = 'Овощи')),
 ('Спагетти Barilla', 
 (SELECT ingredient_type_id FROM ingredient_type WHERE name_ingredient_type = 'Макароны')),
 ('Томатный соус Barilla', 
 (SELECT ingredient_type_id FROM ingredient_type WHERE name_ingredient_type = 'Соус')),
 ('Вода из-под крана', 
 (SELECT ingredient_type_id FROM ingredient_type WHERE name_ingredient_type = 'Вода')),
 ('Белый хлеб', 
 (SELECT ingredient_type_id FROM ingredient_type WHERE name_ingredient_type = 'Хлеб')),
 ('Сливочное масло', 
 (SELECT ingredient_type_id FROM ingredient_type WHERE name_ingredient_type = 'Молочная продукция')),
 ('Полученный ингредиент', NULL),
 ('Сметана',
 (SELECT ingredient_type_id FROM ingredient_type WHERE name_ingredient_type = 'Молочная продукция')),
 ('Куриная печень',
 (SELECT ingredient_type_id FROM ingredient_type WHERE name_ingredient_type = 'Субпродукты')),
 ('Картофель бейби',  
 (SELECT ingredient_type_id FROM ingredient_type WHERE name_ingredient_type = 'Овощи'));
 
 
 
 
 INSERT INTO cold_preparation(name_mode)
VALUES
('Добавить воды'),
('Помыть'),
('Почистить'),
('Мелко нарезать'),
('Средне нарезать'),
('Крупно нарезать'),
('Отбить с одной стороны'),
('Посолить'),
('Поперчить'),
('Добавить специи'),
('Положить на противень'),
('Положить в холодильник'),
('Положить сверху'),
('Нафаршировать'),
('Сделать котлеты'),
('Поставить мариноваться'),
('Порезать кольцами'),
('Порезать полукольцами'),
('Добавить соус'),
('Полить'),
('Порезать слайсами'),
('Слить жидкость'),
('Вытащить из духовки'),
('Перевернуть'),
('Положить/Налить в миску'),
('Перемешать'),
('Взять ёмкость'),
('Бросить в кипящую воду'),
('Слить воду'),
('Дать остыть'),
('Поместить в мультиварку'),
('Срезать/Вырезать жир'),
('Отбить с обеих сторон'),
('Убрать у лука зелёный слой'),
('Сделать плоские котлеты'),
('Добавить в общее блюдо'),
('Взять кастрюлю'),
('Убрать с плиты'),
('Отжать жидкость'),
('Положить/Налить в чашку'),
('Порезать перьями'),
('Замочить в воде'),
('Поместить в пакет для запекания'),
('Потрясти пакет для запекания'),
('Освободить от пакета для запекания'),
('Разрещать пакет для запекания');


INSERT into multicooker(name_mode)
VALUES
('Варка/Пар'),
('Крупы/Рис'),
('Жарка/Фритюр'),
('Суп'),
('Тушение'),
('Разогреть мультиварку');


Insert into cooktop(name_mode)
VALUES
('Вскипятить'),
('Варить'),
('Тушить'),
('Пожарить'),
('Варить на слабом огне'),
('Варить на среднем огне'),
('Варить на сильном огне'),
('Жарить на слабом огне'),
('Жарить на среднем огне'),
('Жарить на сильном огне'),
('Тушить на слабом огне'),
('Тушить на среднем огне'),
('Тушить на сильном огне'),
('Довести до кипения');


insert into oven(name_mode)
VALUES
('Разогреть духовку'),
('Верхний/нижний нагреватель'),
('Инфракрасный нагрев'),
('Инфракрасный нагрев + вентилятор'),
('Вентиляционный нагрев + нижний нагреватель'),
('Вентиляционный нагрев'),
('Нижний нагреватель + вентилятор');




Insert into microwave(name_mode)
VALUES
('360 Вт'),
('600 Вт'),
('800 Вт');


/* Заполнение таблицы шаги готовки*/

INSERT into step(cold_preparation_id)
SELECT cold_preparation_id FROM cold_preparation;

INSERT into step(cooktop_id)
SELECT cooktop_id FROM cooktop;

INSERT into step(multicooker_id)
SELECT multicooker_id FROM multicooker;

INSERT into step(oven_id)
SELECT oven_id FROM oven;

INSERT into step(microwave_id)
SELECT microwave_id FROM microwave;




