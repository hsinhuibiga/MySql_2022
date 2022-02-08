SELECT DISTINCT s1.*
FROM stadium AS s1, stadium AS s2, stadium AS s3
WHERE s1.people >= 100 and s2.people >= 100 and s3.people >= 100
AND
(
    (s1.id - s2.id = 1 AND s1.id - s3.id = 2 )  -- for rows in first place
    OR
    (s2.id - s1.id = 1 AND s2.id - s3.id = 2 )  -- for rows in second place
    OR
    (s3.id - s2.id = 1 AND s2.id - s1.id =1 )   -- for rows in third place
)
ORDER BY s1.id
;