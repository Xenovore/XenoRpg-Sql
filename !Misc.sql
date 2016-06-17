----------------------------------------------------------------
-- MISC CRAP
----------------------------------------------------------------

-- CLEAR TABLE
DELETE FROM StatsBase; -- Delete all records; table remains intact (unlike DROP TABLE)
UPDATE SQLITE_SEQUENCE SET SEQ=0 WHERE NAME='StatsBase'; -- reset autoincrement sequence

drop table temp
