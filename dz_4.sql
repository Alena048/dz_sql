1 Задача.

По шагам для себя больше расписала, так легче для решения и понимания.

Вывести все жанры, которые не представлены в книгах на складе.

Итоговый запрос
SELECT name FROM genre LEFT JOIN book ON book.genre_id = genre.id WHERE book.genre_id is NULL;

Второй шаг
SELECT * FROM genre LEFT JOIN book ON book.genre_id = genre.id WHERE book.genre_id is NULL;

Первый шаг
SELECT * FROM genre LEFT JOIN book ON book.genre_id = genre.id;


2 Задача.

Вывести информацию о книгах (жанр, книга, автор) относящиеся к жанру, включающему слово "Роман"
в отсортированном по названиям книг виде.

SELECT genre.name, title, author.name FROM author INNER JOIN book ON author.id = book.author_id
INNER JOIN genre ON genre.id = book.genre_id WHERE genre.name = 'Детектив' ORDER BY title;