Delimiter \\
CREATE DEFINER=`root`@`localhost` FUNCTION `hello`() RETURNS varchar(120) CHARSET utf8mb4
    NO SQL
BEGIN
if (time(now()) between time('00:00:00') and time('6:00:00')) then return 'Доброй ночи';
elseif (time(now()) between time('6:00:00') and time('12:00:00')) then return 'Доброе утро';
elseif (time(now()) between time('12:00:00') and time('18:00:00')) then return 'Добрый день';
elseif (time(now()) between time('18:00:00') and time('00:00:00')) then return 'Добрый день';
END if;
end\\
Delimiter ;
select hello();