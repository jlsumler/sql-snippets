

-- CREATE TABLE events (
-- 	  id INT,
-- 	  sensor INT,
-- 	  event_type INT,
-- 	  time datetime
-- 	  );

-- 	INSERT INTO events VALUES (0,2,4,'2012-06-08 12:13:14');
-- 	INSERT INTO events VALUES (1,3,4,'2012-06-08 13:13:14');
-- 	INSERT INTO events VALUES (2,2,4,'2012-06-08 12:15:14');
-- 	INSERT INTO events VALUES (3,1,6,'2012-06-08 15:13:14');

SELECT * FROM events 
WHERE time IN(SELECT max(time) FROM events 
	            GROUP BY sensor_id,event_type) 
ORDER BY time DESC;
