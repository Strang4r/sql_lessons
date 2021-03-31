select if(from_user_id = 5, from_user_id, to_user_id) as u_id, 
(select concat(`firstname`, ' ', `lastname`) as user_names from `profile` where `profile`.user_id = `from_user_id`) as usr_FIO, if(from_user_id = 5, to_user_id, from_user_id) as fr_id, 
(select concat(`firstname`, ' ', `lastname`) as user_names from `profile` where `profile`.user_id = `to_user_id`) as FR_FIO,count(from_user_id = 5) + count(to_user_id = 5) as message_total 
 from message where from_user_id = 5 or to_user_id = 5 
 group by to_user_id order by message_total desc limit 1;