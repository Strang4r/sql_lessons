SELECT count(*) as total_likes FROM `like` as m WHERE user_id IN(
	SELECT user_id FROM `like`
		WHERE user_id IN (
			SELECT * FROM (
				SELECT user_id AS youngest FROM vk03.profile order by birthday DESC limit 10) AS ids 
            )
)
