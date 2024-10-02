task_1

CREATE TABLE `vegetables and fruit`.`vegetables and fruit` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `type` ENUM("vegetables", "fruit") NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  `calorie` INT NOT NULL,
  `description` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));


INSERT INTO `vegetables and fruit`.`vegetables and fruit` (`title`, `type`, `color`, `calorie`, `description`) VALUES ('tomato', 'vegetables', 'red', '80', 'Round, ripe');
INSERT INTO `vegetables and fruit`.`vegetables and fruit` (`title`, `type`, `color`, `calorie`, `description`) VALUES ('apple', 'fruit', 'yellow', '75', 'Round, ripe, dessert');
INSERT INTO `vegetables and fruit`.`vegetables and fruit` (`title`, `type`, `color`, `calorie`, `description`) VALUES ('cucumber', 'vegetables', 'green', '25', 'Oblong, eco-friendly');
INSERT INTO `vegetables and fruit`.`vegetables and fruit` (`title`, `type`, `color`, `calorie`, `description`) VALUES ('orange', 'fruit', 'orange', '85', 'Round, dessert');
INSERT INTO `vegetables and fruit`.`vegetables and fruit` (`title`, `type`, `color`, `calorie`, `description`) VALUES ('cabbage', 'vegetables', 'green', '35', 'Round, eco-friendly');


task_2
Запросы будут похожи, для себя их тестировала и в Workbench и в Shell,
разница только во FROM. Немного разные только в запросе 7 будут.


1.Отображение всей информации из таблицы с овоща￾ми и фруктами;

Первый запрос через Workbench
SELECT * FROM `vegetables and fruit`.`vegetables and fruit`;

Второй запрос через Shell
SELECT * FROM `vegetables and fruit`;

2. Отображение всех овощей;

Первый запрос через Workbench
SELECT * FROM `vegetables and fruit`.`vegetables and fruit` WHERE type = "vegetables";

Второй запрос через Shell
SELECT * FROM `vegetables and fruit` WHERE type = 'vegetables';

3. Отображение всех фруктов;

Первый запрос через Workbench
SELECT * FROM `vegetables and fruit`.`vegetables and fruit` WHERE type = "fruit";

Второй запрос через Shell
SELECT * FROM `vegetables and fruit` WHERE type = 'fruit';

4.Отображение всех названий овощей и фруктов;

Первый запрос через Workbench
SELECT title FROM `vegetables and fruit`.`vegetables and fruit`;

Второй запрос через Shell
SELECT title FROM `vegetables and fruit`;

5.Отображение всех цветов. Цвета должны быть уни￾кальными;

Первый запрос через Workbench
SELECT distinct color FROM `vegetables and fruit`.`vegetables and fruit`;

Второй запрос через Shell
SELECT DISTINCT color FROM `vegetables and fruit`;

6.Отображение фруктов конкретного цвета;

Первый запрос через Workbench
SELECT * FROM `vegetables and fruit`.`vegetables and fruit` WHERE color in('orange') and type in('fruit');

Второй запрос через Shell
SELECT * FROM `vegetables and fruit` WHERE color in('orange') and type in('fruit');

7. Отображение овощей конкретного цвета;

Первый запрос через Workbench
SELECT * FROM `vegetables and fruit`.`vegetables and fruit` WHERE color in('green') and type in('vegetables');

Второй запрос через Shell
SELECT * FROM `vegetables and fruit` WHERE type = 'vegetables' and color in('green');