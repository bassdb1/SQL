-- Select which Database I want to use
use mydbase
go
-- See all Columns and Data from the Table_1
SELECT * FROM Table_1

-- If I wanted to just restrict my output to record '2' I could do this

SELECT * from Table_1 WHERE id= 2

-- If I wanted to use the 'or' 

SELECT * from Table_1 WHERE id= 2 or id=3

-- If I just wanted to get the 'Mary's' from my list
select * from Table_1 where Name = 'Mary'

-- -- If I just wanted to get the 'Mary's' from my list and 'sort' I can use 'order by' default sort order = asc
select * from Table_1 where Name = 'Mary' order by Title

-- If I just wanted to get the 'Mary's' from my list and 'sort' I can use 'order by descending, z-a

select * from Table_1 where Name = 'Mary' order by Title desc

-- If I just wanted to get the 'Mary's' from my list and pick out 1 Mary per title, using 'and'

select * from Table_1 where name = 'Mary' and Title = 'HTML Developer'
