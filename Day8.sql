USE startersql;
SELECT*FROM users;

SET AUTOCOMMIT = 0; -- if you set AUTOCOMMIT to 0 then it it turns off the AUTO commit
-- DELETE the user where name is anil
DELETE FROM users WHERE  id=7;  -- if incase by mistake IF I deleted another i can undo that by using ROLL_BACK
SELECT * FROM users;
ROLLBACK; -- RETURNS THE DELETED ROWS OR the deletions made by mistake(REVERTS CHANGES TO LAST SAFEPOINT)
COMMIT;  -- IF you want to save the changes so you will use commit(SAVE CHANGES TO DATABASE)



 