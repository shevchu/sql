
SELECT creator, AVG(clicks) FROM links WHERE long_url LIKE 'https://yandex%' OR long_url LIKE 'https://google%' GROUP BY creator;

SELECT email,COUNT(email) FROM `users` GROUP BY email ORDER BY COUNT(email) DESC limit 1;

SELECT short_url, long_url,id FROM links where long_url like '%https%' ORDER BY id DESC;