-- у меня пока туговато со временем, я постараюсь позже решить оставшиеся задачи

start transaction;
insert into sample.`user` (id, name) (select id, name from new_shop.`user` where id = 1);
commit;