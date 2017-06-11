set @min_n = (select min(lat_n) from station);
set @min_w = (select min(long_w) from station);
set @max_n = (select max(lat_n) from station);
set @max_w = (select max(long_w) from station);
select round(sqrt(power(@max_n - @min_n, 2) + power(@max_w - @min_w, 2)), 4)
