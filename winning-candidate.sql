SELECT Name FROM Candidate
JOIN
(SELECT CandidateId
FROM Vote
GROUP BY CandidateId
ORDER BY Count(*) DESC
limit 1) AS T
ON Candidate.id = T.CandidateId