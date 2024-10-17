1. ВК Подсчитать количество групп, в которые вступил каждый пользователь. И вывести данные пользователя(firstname, lastname, email, phone).

SELECT users_communities.user_id, users.lastname, users.firstname, users.email, count(community_id) as "Количество групп"
FROM users_communities inner join users
on users_communities.user_id = users.id
group by user_id;

2. ВК Подсчитать количество пользователей в каждом сообществе.  И вывести id сообщества и его название

SELECT users_communities.community_id, communities.name, count(user_id) as "Количество пользователей"
FROM users_communities inner join communities
on users_communities.community_id = communities.id
group by community_id;

5. ВК Определить кто больше поставил лайков (всего): мужчины или женщины.

SELECT profiles.gender, count(likes.id) as "Наибольшее количество лайков"
FROM profiles join likes
ON likes.user_id = profiles.user_id GROUP BY profiles.gender
order by "Наибольшее количество лайков" desc LIMIT 1;

4. ВК Подсчитать общее количество лайков, которые получили пользователи младше 18 лет.

SELECT likes.media_id, users.lastname, count(likes.id)
FROM likes  join media ON media.id = likes.media_id
            join users ON users.id = media.user_id
            join profiles ON profiles.user_id = users.id
WHERE (year(now()) - year(birthday)) < 18
GROUP BY likes.media_id
LIMIT 1;

6. Задача по книгам.
Вывести информацию о книгах (название книги, ФИО автора, название жанра, цену и количество экземпляров книги)
написанных в самых популярных жанрах, в отсортированном алфавитном порядке по названию книг виде.
Самым популярным считать жанр, общее количество экземпляров книг которого на складе максимально.

SELECT book.title, author.name, genre.name, book.price, book.amount
FROM author inner join book ON author.id = book.author_id
			inner join (
                        SELECT genre_id
                        FROM book
                        GROUP BY genre_id
                        having SUM(amount) >= ALL (SELECT SUM(amount)
                                                   FROM book GROUP BY genre_id))
                                                   query_in ON book.genre_id = query_in.genre_id
						INNER JOIN genre ON query_in.genre_id = genre.id
                        ORDER BY 1;