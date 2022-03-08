SELECT question_id as survey_log
FROM survey_log
GROUP BY question_id
ORDER BY avg(case when action ='answer' then 1 else 0 end)desc
LIMIT 1;