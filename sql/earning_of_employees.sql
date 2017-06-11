select (months * salary) as earning, count(*) from employee group by earning order by count(*) desc limit 1 
