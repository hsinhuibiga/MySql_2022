SELECT
	player_id,
	device_id
FROM (
	 SELECT 
	 	player_id,
	 	device_id,
	 	event_date,
	 	MIN(event_date) OVER(PARTITION BY player_id ORDER BY event_date) as first_login
	 FROM Activity
 	) t1
 WHERE event_date = first_login