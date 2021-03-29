SELECT AVG((TO_DAYS(NOW())-TO_DAYS(birthday_at)) /365.25 AS age)  FROM users
