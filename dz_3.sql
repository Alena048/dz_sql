task_1

INSERT INTO `vegetables and fruit`.`vegetables and fruit` (`title`, `type`, `color`, `calorie`, `description`) VALUES ('apple', 'fruit', 'red', '90', 'Round, ripe, dessert');
INSERT INTO `vegetables and fruit`.`vegetables and fruit` (`title`, `type`, `color`, `calorie`, `description`) VALUES ('tomato', 'vegetables', 'green', '35', 'Round, sour');

1. Отображение всех овощей с калорийностью меньше,
указанной калорийности;

SELECT * FROM `vegetables and fruit`.`vegetables and fruit` WHERE type = 'vegetables' and calorie < 50;

SELECT * FROM `vegetables and fruit` WHERE type = 'vegetables' and calorie < 50;

2. Отображение всех фруктов с калорийностью в ука￾занном диапазоне;

SELECT * FROM `vegetables and fruit`.`vegetables and fruit` WHERE type = 'fruit' and calorie between 50 and 80;

SELECT * FROM `vegetables and fruit` WHERE type = 'fruit' and calorie BETWEEN 50 and 80;

3. Отображение всех овощей в названии, которых есть
указанное слово. Например, слово: капуста;

SELECT * FROM `vegetables and fruit`.`vegetables and fruit` WHERE title = 'tomato';

SELECT * FROM `vegetables and fruit` WHERE title = 'tomato' and type = 'vegetables';

4. Отображение всех овощей и фруктов в кратком опи￾сании, которых есть указанное слово. Например,
слово: гемоглобин;

SELECT * FROM `vegetables and fruit`.`vegetables and fruit` WHERE description LIKE '%round%';
SELECT * FROM `vegetables and fruit`.`vegetables and fruit` WHERE description LIKE '%round%' and description LIKE '%dessert';

SELECT * FROM `vegetables and fruit` WHERE description LIKE '%eco%';

5. Показать все овощи и фрукты, у которых цвет желтый
или красный.

SELECT * FROM `vegetables and fruit`.`vegetables and fruit` WHERE color = 'red' or color = 'yellow';

SELECT * FROM `vegetables and fruit` WHERE color = 'green';


task_2

1. Показать количество овощей;

SELECT COUNT(type) FROM `vegetables and fruit`.`vegetables and fruit` WHERE type = 'vegetables';

SELECT COUNT(type) as 'количество овощей' FROM `vegetables and fruit` WHERE type = 'vegetables';

2. Показать количество фруктов;

SELECT COUNT(type) FROM `vegetables and fruit`.`vegetables and fruit` WHERE type = 'fruit';

SELECT COUNT(type) as 'количество фруктов' FROM `vegetables and fruit` WHERE type = 'fruit';

3. Показать количество овощей и фруктов заданного
цвета;

SELECT COUNT(type) FROM `vegetables and fruit`.`vegetables and fruit` WHERE color = 'green' or color = 'red';

SELECT COUNT(type) as 'кол-во овощей и фруктов зеленого цвета' FROM `vegetables and fruit` WHERE color = 'green';

4. Показать количество овощей и фруктов каждого цвета;

SELECT color, COUNT(type) as 'количество' FROM `vegetables and fruit`.`vegetables and fruit` group by color;

SELECT color, COUNT(type) as 'количество'  FROM `vegetables and fruit` GROUP BY color;

5. Показать цвет с минимальным количеством овощей
и фруктов;

SELECT color FROM `vegetables and fruit`.`vegetables and fruit` GROUP BY color having count(*) = (SELECT count(*) FROM `vegetables and fruit`.`vegetables and fruit` GROUP BY color ORDER BY count(color)  LIMIT 1);

6. Показать цвет с максимальным количеством овощей
и фруктов;

SELECT color FROM `vegetables and fruit`.`vegetables and fruit` GROUP BY color having count(*) = (SELECT count(*) FROM `vegetables and fruit`.`vegetables and fruit` GROUP BY color ORDER BY count(color) desc LIMIT 1);

7. Показать минимальную калорийность овощей ифрук￾тов;

SELECT MIN(calorie) as 'Минимальная калорийность' FROM `vegetables and fruit`.`vegetables and fruit`;

SELECT MIN(calorie) as 'Минимальная калорийность'  FROM `vegetables and fruit`;

8. Показать максимальную калорийность овощей и
фруктов;

SELECT MAX(calorie) as 'Минимальная калорийность' FROM `vegetables and fruit`.`vegetables and fruit`;

SELECT MAX(calorie) as 'Максимальная калорийность'  FROM `vegetables and fruit`;

9. Показать среднюю калорийность овощей и фруктов;

SELECT ROUND(AVG(calorie), 1) as 'Средняя калорийность' FROM `vegetables and fruit`.`vegetables and fruit`;

SELECT ROUND(AVG(calorie), 1) as 'Средняя калорийность'  FROM `vegetables and fruit`;

10. Показать фрукт с минимальной калорийностью;

SELECT * FROM `vegetables and fruit` WHERE calorie = (SELECT MIN(calorie) FROM `vegetables and fruit` where type = "fruit");

11. Показать фрукт с максимальной калорийностью.

SELECT * FROM `vegetables and fruit` WHERE calorie = (SELECT MAX(calorie) FROM `vegetables and fruit` where type = "fruit");