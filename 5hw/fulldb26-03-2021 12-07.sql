#
# TABLE STRUCTURE FOR: community
#

DROP TABLE IF EXISTS `community`;

CREATE TABLE `community` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(245) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_community_user1_idx` (`admin_id`),
  CONSTRAINT `fk_community_user1` FOREIGN KEY (`admin_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `community` (`id`, `name`, `text`, `admin_id`) VALUES (1, 'dolorum', 'Magni deserunt quia ab qui illo.', 37);
INSERT INTO `community` (`id`, `name`, `text`, `admin_id`) VALUES (2, 'omnis', 'Accusamus dolorem aspernatur aut enim dolorum veniam.', 39);
INSERT INTO `community` (`id`, `name`, `text`, `admin_id`) VALUES (3, 'totam', 'Vero eaque occaecati consequatur voluptas ad ratione ipsa quas.', 69);
INSERT INTO `community` (`id`, `name`, `text`, `admin_id`) VALUES (4, 'enim', 'Et repudiandae eligendi culpa veniam odio natus labore.', 19);
INSERT INTO `community` (`id`, `name`, `text`, `admin_id`) VALUES (5, 'et', 'Reiciendis ipsam in aut architecto.', 69);
INSERT INTO `community` (`id`, `name`, `text`, `admin_id`) VALUES (6, 'consequatur', 'Dolores quisquam aperiam saepe aliquid ducimus et.', 98);
INSERT INTO `community` (`id`, `name`, `text`, `admin_id`) VALUES (7, 'laborum', 'Quaerat amet provident maiores in architecto.', 93);
INSERT INTO `community` (`id`, `name`, `text`, `admin_id`) VALUES (8, 'aspernatur', 'Nesciunt consequuntur dolorem recusandae repudiandae quia ut unde.', 8);
INSERT INTO `community` (`id`, `name`, `text`, `admin_id`) VALUES (9, 'unde', 'Reprehenderit error quisquam veniam qui in.', 23);
INSERT INTO `community` (`id`, `name`, `text`, `admin_id`) VALUES (10, 'error', 'Consequatur eius aliquid facilis voluptate voluptatem aut.', 66);


#
# TABLE STRUCTURE FOR: friend_request
#

DROP TABLE IF EXISTS `friend_request`;

CREATE TABLE `friend_request` (
  `from_user_id` int(10) unsigned NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `status` tinyint(1) DEFAULT 0 COMMENT '-1 - отказ; 0 - запрос; 1 - дружба',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`from_user_id`,`to_user_id`),
  KEY `fk_friend_request_user1_idx` (`from_user_id`),
  KEY `fk_friend_request_user2_idx` (`to_user_id`),
  CONSTRAINT `fk_friend_request_user1` FOREIGN KEY (`from_user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_friend_request_user2` FOREIGN KEY (`to_user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (1, 9, -1, '1989-02-08 23:49:38', '2004-11-01 02:26:51');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (1, 57, 0, '1990-02-11 23:52:24', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (2, 65, 0, '2002-01-02 08:03:39', '2004-07-04 05:34:41');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (2, 96, 1, '1986-03-10 12:27:02', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (6, 28, 1, '2002-02-08 13:05:09', '1984-03-17 12:32:32');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (6, 30, 1, '1991-05-03 05:19:00', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (7, 60, 1, '2000-08-25 00:32:47', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (9, 53, 0, '2005-07-03 21:13:06', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (9, 54, 0, '2009-04-26 03:34:02', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (10, 59, -1, '2007-07-23 15:50:28', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (10, 66, 1, '2011-12-05 00:55:20', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (11, 1, -1, '1993-09-07 21:33:56', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (11, 9, 1, '2009-01-05 21:07:07', '1988-08-09 20:01:59');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (11, 71, -1, '2013-07-24 17:47:39', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (12, 62, -1, '2019-08-17 18:11:54', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (14, 13, 0, '1985-01-22 18:49:17', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (14, 25, 0, '2015-11-14 23:05:31', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (15, 39, 1, '1977-09-07 05:31:49', '2007-04-17 07:00:11');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (15, 58, -1, '2019-12-03 20:43:38', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (15, 83, -1, '1995-06-28 18:18:01', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (16, 51, -1, '2019-11-17 03:05:27', '2000-12-11 01:44:35');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (16, 75, 1, '1978-08-11 06:25:29', '1981-08-15 14:19:57');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (19, 5, 0, '2013-03-07 06:45:40', '1993-08-28 18:24:56');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (20, 12, 0, '1993-05-07 07:20:34', '1980-12-25 07:52:23');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (21, 92, 1, '2006-02-02 18:13:38', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (22, 62, 0, '1979-08-31 23:14:06', '1980-05-18 20:40:20');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (22, 97, -1, '2015-09-20 20:32:01', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (23, 5, 0, '2001-06-07 03:32:48', '1982-09-12 05:20:21');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (23, 30, -1, '2011-12-03 13:26:04', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (24, 24, 0, '1972-05-05 12:41:56', '1994-08-04 12:01:05');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (28, 10, -1, '2014-07-22 07:11:29', '2003-01-19 01:56:30');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (29, 69, 0, '2020-12-14 11:08:43', '1998-02-13 10:23:18');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (29, 90, -1, '2016-03-10 23:30:30', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (31, 16, -1, '2009-12-09 18:00:53', '2017-06-24 15:26:32');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (31, 99, 0, '2019-06-07 21:55:18', '2000-07-18 17:05:18');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (31, 100, 0, '1987-05-24 04:22:07', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (32, 49, -1, '1972-01-27 10:52:00', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (34, 44, 1, '2015-04-19 21:21:18', '2001-07-12 22:42:01');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (34, 98, 0, '1993-07-14 04:11:41', '1994-10-13 04:07:28');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (35, 20, 0, '1979-11-19 00:10:04', '1992-03-19 10:45:55');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (35, 62, 0, '2011-10-15 23:53:12', '2006-01-17 00:42:50');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (36, 90, 1, '2002-05-21 01:22:54', '1971-07-11 22:41:26');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (38, 51, 1, '1980-09-14 07:36:44', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (41, 50, 1, '1980-12-26 22:17:13', '1970-05-17 11:32:22');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (41, 66, 0, '2001-04-23 21:06:16', '2010-10-26 11:01:53');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (43, 81, -1, '1983-06-25 20:18:01', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (48, 6, -1, '1990-11-10 03:39:00', '1975-11-13 17:06:52');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (49, 2, 0, '1986-01-21 13:47:57', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (49, 15, -1, '1983-01-06 07:28:53', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (51, 63, 0, '2004-02-26 16:51:49', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (51, 98, 1, '1985-09-01 19:22:15', '2005-06-07 02:34:35');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (52, 96, -1, '1983-11-13 06:00:57', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (53, 37, -1, '2010-10-22 11:57:06', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (53, 65, 1, '2018-12-21 11:50:07', '2007-01-03 13:29:13');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (54, 75, 0, '1986-02-24 17:36:11', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (57, 24, 0, '2009-03-16 17:36:43', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (57, 78, 1, '1985-11-05 17:44:59', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (58, 93, -1, '1975-04-30 08:31:07', '1973-11-26 16:27:54');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (60, 27, 1, '1996-11-15 16:40:08', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (60, 84, 0, '2018-08-14 12:38:52', '1996-11-26 21:36:42');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (61, 10, 0, '2004-10-24 00:38:27', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (61, 72, 0, '1975-08-12 13:31:33', '1992-10-22 13:50:32');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (61, 89, 1, '2014-01-25 18:50:23', '1976-01-07 09:06:09');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (63, 61, -1, '2010-11-13 05:07:26', '1971-03-10 06:12:14');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (63, 94, -1, '2013-05-12 04:10:54', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (64, 27, -1, '1996-07-11 02:46:46', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (64, 40, -1, '2010-12-13 18:59:01', '2001-08-17 12:03:44');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (64, 45, 1, '2003-04-29 18:30:08', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (64, 63, 0, '2007-10-07 06:55:52', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (65, 64, 0, '1993-12-15 06:11:25', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (65, 93, -1, '1970-05-23 03:32:15', '1973-06-08 04:35:53');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (66, 26, 0, '1999-08-14 17:00:09', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (66, 42, 0, '2014-05-24 15:19:40', '2013-09-23 22:32:56');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (68, 85, 0, '2019-05-06 11:14:09', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (70, 8, 0, '1979-12-19 06:25:16', '2008-05-21 00:34:37');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (70, 54, 1, '1997-06-25 14:50:37', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (71, 48, 1, '1979-10-22 15:35:21', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (72, 75, 1, '2011-06-15 17:11:23', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (74, 19, 1, '1995-08-30 12:17:44', '2003-07-14 02:35:22');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (74, 55, -1, '1996-08-09 12:14:46', '1972-07-04 00:28:10');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (76, 4, -1, '2001-10-20 07:00:18', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (78, 49, 0, '2008-06-23 10:41:21', '2017-08-07 11:27:41');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (79, 94, 1, '1999-06-17 07:55:08', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (80, 5, 1, '1998-03-07 14:52:45', '1987-04-26 03:30:59');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (81, 14, 1, '1991-10-06 01:13:34', '1990-09-02 20:04:15');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (86, 87, -1, '1997-06-24 05:01:59', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (86, 99, 0, '1981-02-13 06:43:16', '1971-04-01 03:55:28');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (88, 85, -1, '2006-10-27 06:09:04', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (89, 3, -1, '1975-12-26 11:24:16', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (90, 72, 0, '1997-02-22 08:27:45', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (91, 11, 1, '2019-01-22 00:11:14', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (91, 78, 1, '2001-12-22 19:40:55', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (92, 25, -1, '2003-08-24 09:44:52', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (93, 77, -1, '1978-12-11 10:10:20', '1974-09-29 02:23:25');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (96, 89, 0, '1996-06-08 03:03:19', '2017-06-08 21:31:20');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (97, 39, -1, '1991-02-06 22:52:13', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (99, 7, -1, '1975-10-19 07:33:24', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (100, 8, 1, '2008-06-17 04:36:18', '0000-00-00 00:00:00');
INSERT INTO `friend_request` (`from_user_id`, `to_user_id`, `status`, `created_at`, `updated_at`) VALUES (100, 80, 1, '1978-12-11 13:38:59', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: like
#

DROP TABLE IF EXISTS `like`;

CREATE TABLE `like` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `media_id` int(10) unsigned DEFAULT NULL,
  `post_id` int(10) unsigned DEFAULT NULL,
  `message_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_media_UNIQUE` (`user_id`,`media_id`),
  UNIQUE KEY `user_post_UNIQUE` (`user_id`,`post_id`),
  UNIQUE KEY `user_message_UNIQUE` (`user_id`,`message_id`),
  KEY `fk_like_user1_idx` (`user_id`),
  KEY `fk_like_media1_idx` (`media_id`),
  KEY `fk_like_post1_idx` (`post_id`),
  KEY `fk_like_message1_idx` (`message_id`),
  CONSTRAINT `fk_like_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_like_message1` FOREIGN KEY (`message_id`) REFERENCES `message` (`id`),
  CONSTRAINT `fk_like_post1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  CONSTRAINT `fk_like_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (101, 18, 12, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (102, 33, 55, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (103, 66, 46, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (104, 6, 28, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (105, 98, 14, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (106, 8, 85, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (107, 10, 17, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (108, 76, 78, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (109, 90, 91, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (110, 46, 17, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (111, 63, 48, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (112, 75, 36, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (113, 50, 36, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (114, 21, 48, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (115, 65, 36, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (116, 14, 43, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (117, 34, 75, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (118, 91, 31, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (119, 78, 41, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (121, 14, 93, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (122, 40, 87, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (123, 23, 16, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (124, 59, 76, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (125, 50, 63, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (126, 93, 59, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (127, 100, 15, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (128, 92, 46, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (129, 39, 82, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (130, 69, 3, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (131, 19, 25, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (132, 1, 65, NULL, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (133, 27, NULL, 92, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (134, 98, NULL, 90, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (135, 100, NULL, 72, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (136, 58, NULL, 96, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (137, 54, NULL, 74, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (138, 38, NULL, 14, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (139, 80, NULL, 33, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (140, 5, NULL, 30, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (141, 39, NULL, 51, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (142, 6, NULL, 32, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (143, 52, NULL, 96, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (144, 75, NULL, 5, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (145, 27, NULL, 51, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (146, 34, NULL, 19, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (147, 4, NULL, 92, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (148, 52, NULL, 39, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (149, 43, NULL, 26, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (150, 30, NULL, 54, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (151, 61, NULL, 91, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (153, 74, NULL, 30, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (154, 78, NULL, 20, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (156, 33, NULL, 41, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (157, 18, NULL, 25, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (158, 24, NULL, 29, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (159, 26, NULL, 20, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (160, 15, NULL, 32, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (161, 97, NULL, 96, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (162, 9, NULL, 56, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (163, 26, NULL, 59, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (164, 74, NULL, 35, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (165, 66, NULL, 39, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (166, 36, NULL, 73, NULL);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (167, 87, NULL, NULL, 1);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (168, 75, NULL, NULL, 71);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (169, 18, NULL, NULL, 27);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (170, 100, NULL, NULL, 25);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (171, 47, NULL, NULL, 21);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (172, 91, NULL, NULL, 56);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (173, 76, NULL, NULL, 12);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (174, 18, NULL, NULL, 5);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (175, 10, NULL, NULL, 85);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (176, 56, NULL, NULL, 74);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (177, 80, NULL, NULL, 79);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (178, 2, NULL, NULL, 48);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (179, 26, NULL, NULL, 17);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (180, 4, NULL, NULL, 80);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (181, 30, NULL, NULL, 48);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (182, 35, NULL, NULL, 44);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (183, 63, NULL, NULL, 18);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (184, 52, NULL, NULL, 31);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (185, 84, NULL, NULL, 85);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (186, 26, NULL, NULL, 51);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (187, 98, NULL, NULL, 2);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (188, 79, NULL, NULL, 8);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (189, 56, NULL, NULL, 90);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (190, 37, NULL, NULL, 99);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (191, 64, NULL, NULL, 15);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (192, 45, NULL, NULL, 28);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (193, 1, NULL, NULL, 26);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (194, 66, NULL, NULL, 64);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (195, 44, NULL, NULL, 22);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (196, 82, NULL, NULL, 37);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (197, 20, NULL, NULL, 57);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (198, 92, NULL, NULL, 55);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (199, 23, NULL, NULL, 68);
INSERT INTO `like` (`id`, `user_id`, `media_id`, `post_id`, `message_id`) VALUES (200, 81, NULL, NULL, 81);


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `url` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blob` blob DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `fk_media_media_type1_idx` (`media_type_id`),
  KEY `fk_media_user1_idx` (`user_id`),
  CONSTRAINT `fk_media_media_type1` FOREIGN KEY (`media_type_id`) REFERENCES `media_type` (`id`),
  CONSTRAINT `fk_media_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `media_chk_1` CHECK (json_valid(`metadata`))
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (1, 1, 35, 'http://donnellyglover.biz/', NULL, NULL, '1974-07-30 00:51:48', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (2, 1, 58, 'http://www.moen.info/', NULL, NULL, '1988-09-26 09:00:56', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (3, 2, 33, 'http://www.sporer.org/', NULL, NULL, '2006-10-28 18:10:50', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (4, 2, 7, 'http://russelgreenholt.com/', NULL, NULL, '2001-06-21 00:57:24', '1975-05-24 16:52:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (5, 3, 26, 'http://pourosschmeler.net/', NULL, NULL, '1975-09-30 17:00:34', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (6, 1, 67, 'http://www.osinskirunolfsdottir.net/', NULL, NULL, '1997-01-24 13:40:14', '1970-12-21 21:05:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (7, 1, 98, 'http://www.mccluresporer.com/', NULL, NULL, '2020-05-18 11:30:14', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (8, 2, 10, 'http://www.hickle.com/', NULL, NULL, '1990-05-31 20:54:08', '1976-03-25 12:02:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (9, 2, 12, 'http://senger.info/', NULL, NULL, '1985-01-08 17:24:32', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (10, 3, 20, 'http://www.schaden.com/', NULL, NULL, '1986-01-11 15:35:01', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (11, 2, 13, 'http://www.tillman.biz/', NULL, NULL, '1991-03-30 04:21:10', '2013-04-25 15:55:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (12, 1, 99, 'http://www.schroeder.com/', NULL, NULL, '1975-07-22 05:51:31', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (13, 1, 43, 'http://reichert.org/', NULL, NULL, '1971-03-23 16:30:39', '2013-10-07 17:57:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (14, 1, 29, 'http://www.hirthe.net/', NULL, NULL, '1983-12-23 06:16:22', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (15, 1, 13, 'http://www.moore.com/', NULL, NULL, '2017-02-25 04:40:09', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (16, 3, 61, 'http://www.leuschke.net/', NULL, NULL, '2020-06-11 01:29:12', '1979-08-05 21:21:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (17, 2, 24, 'http://www.schoen.org/', NULL, NULL, '1971-12-18 01:45:05', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (18, 1, 13, 'http://ledner.org/', NULL, NULL, '2019-09-20 06:51:13', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (19, 2, 80, 'http://www.botsfordkessler.org/', NULL, NULL, '1985-05-27 14:13:21', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (20, 1, 56, 'http://gorczany.com/', NULL, NULL, '2000-07-01 09:14:26', '1997-03-20 01:50:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (21, 1, 28, 'http://www.trantowmante.biz/', NULL, NULL, '1971-06-13 04:39:23', '2007-09-07 14:30:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (22, 1, 12, 'http://www.schowalter.com/', NULL, NULL, '1990-06-26 12:03:44', '2012-03-29 05:40:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (23, 1, 81, 'http://www.walsh.biz/', NULL, NULL, '2018-03-19 02:50:18', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (24, 1, 83, 'http://www.mueller.biz/', NULL, NULL, '2006-11-04 18:06:18', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (25, 3, 8, 'http://www.casper.net/', NULL, NULL, '1995-02-16 07:59:59', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (26, 1, 52, 'http://www.priceeichmann.com/', NULL, NULL, '1971-03-15 12:46:12', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (27, 1, 34, 'http://www.wilderman.net/', NULL, NULL, '1995-06-04 11:21:34', '1976-10-03 10:04:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (28, 2, 29, 'http://bradtke.com/', NULL, NULL, '1997-08-17 08:08:45', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (29, 3, 68, 'http://hansenrunolfsdottir.com/', NULL, NULL, '2013-06-15 06:50:02', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (30, 2, 6, 'http://www.waelchilegros.info/', NULL, NULL, '1978-05-18 21:16:21', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (31, 3, 48, 'http://schustermcclure.com/', NULL, NULL, '2020-03-09 05:23:08', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (32, 2, 29, 'http://zemlak.net/', NULL, NULL, '2020-12-05 05:12:48', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (33, 3, 84, 'http://www.boganbatz.biz/', NULL, NULL, '2019-01-25 07:19:44', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (34, 2, 28, 'http://www.jaskolski.com/', NULL, NULL, '1981-11-03 09:21:02', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (35, 2, 60, 'http://www.braun.info/', NULL, NULL, '2006-09-22 09:48:38', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (36, 3, 69, 'http://price.biz/', NULL, NULL, '1973-12-29 11:03:49', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (37, 3, 7, 'http://www.cole.com/', NULL, NULL, '1974-08-14 13:40:49', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (38, 3, 14, 'http://www.sawayn.com/', NULL, NULL, '2007-12-24 13:04:27', '1989-11-12 00:25:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (39, 3, 2, 'http://carroll.info/', NULL, NULL, '1986-05-15 20:37:01', '1976-09-18 06:59:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (40, 3, 79, 'http://www.streich.com/', NULL, NULL, '1970-02-07 15:54:28', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (41, 1, 98, 'http://kassulke.net/', NULL, NULL, '1970-09-09 20:34:15', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (42, 1, 31, 'http://schultz.com/', NULL, NULL, '1970-12-07 21:53:31', '1990-08-15 03:06:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (43, 1, 80, 'http://www.simoniskuhlman.org/', NULL, NULL, '1970-04-17 00:51:40', '1995-02-20 18:15:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (44, 2, 7, 'http://reillyparisian.com/', NULL, NULL, '2006-03-25 10:01:11', '2001-08-22 21:55:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (45, 2, 15, 'http://fadel.com/', NULL, NULL, '1988-03-04 18:36:25', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (46, 1, 28, 'http://kilback.biz/', NULL, NULL, '1981-10-29 01:31:52', '1985-10-02 18:16:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (47, 2, 78, 'http://www.bartolettijerde.com/', NULL, NULL, '2007-08-09 05:29:37', '2001-12-26 15:48:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (48, 2, 34, 'http://veumrippin.org/', NULL, NULL, '1973-06-19 12:56:48', '2013-12-21 11:12:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (49, 2, 97, 'http://christiansendaniel.info/', NULL, NULL, '2007-11-05 23:50:11', '2000-03-27 17:00:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (50, 2, 24, 'http://www.murazik.com/', NULL, NULL, '2018-06-24 23:12:58', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (51, 2, 45, 'http://gusikowski.net/', NULL, NULL, '2011-08-01 22:00:10', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (52, 3, 45, 'http://stroman.info/', NULL, NULL, '1988-11-05 08:03:50', '1984-11-08 04:32:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (53, 2, 74, 'http://morarbins.net/', NULL, NULL, '1978-06-19 06:23:47', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (54, 2, 38, 'http://walsh.info/', NULL, NULL, '1985-04-30 03:38:53', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (55, 3, 53, 'http://mosciski.info/', NULL, NULL, '2017-08-10 17:05:43', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (56, 1, 85, 'http://www.mullerschmidt.com/', NULL, NULL, '2001-07-03 13:13:26', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (57, 2, 46, 'http://www.collins.com/', NULL, NULL, '2017-11-04 21:03:02', '1971-12-15 13:17:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (58, 1, 81, 'http://www.parkerkoelpin.com/', NULL, NULL, '1993-07-07 05:28:00', '1975-08-25 07:28:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (59, 1, 74, 'http://www.mohr.com/', NULL, NULL, '1986-09-04 20:28:56', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (60, 3, 73, 'http://koeppthompson.com/', NULL, NULL, '1970-08-29 04:36:27', '1987-04-09 16:12:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (61, 3, 98, 'http://pollich.com/', NULL, NULL, '2016-03-26 06:03:54', '2013-07-23 15:16:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (62, 1, 51, 'http://danielbalistreri.biz/', NULL, NULL, '1995-04-09 23:24:00', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (63, 3, 57, 'http://www.spinka.net/', NULL, NULL, '1985-03-04 11:11:04', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (64, 3, 37, 'http://vandervortfarrell.com/', NULL, NULL, '1997-01-20 17:07:14', '1974-04-18 23:25:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (65, 2, 46, 'http://www.gerlach.com/', NULL, NULL, '1974-10-11 14:23:05', '1980-01-31 13:55:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (66, 2, 9, 'http://wilderman.net/', NULL, NULL, '2011-04-10 09:53:57', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (67, 3, 53, 'http://www.carterbrekke.com/', NULL, NULL, '2001-08-14 10:26:15', '2011-12-02 05:45:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (68, 2, 41, 'http://www.hamillmosciski.com/', NULL, NULL, '1994-08-19 09:49:09', '2009-06-30 11:36:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (69, 1, 11, 'http://dickihackett.org/', NULL, NULL, '2008-06-23 08:05:40', '1993-03-09 14:19:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (70, 3, 2, 'http://gutkowski.com/', NULL, NULL, '2001-07-21 14:23:44', '2016-07-15 04:25:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (71, 2, 94, 'http://www.mertz.com/', NULL, NULL, '2012-11-11 21:24:07', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (72, 3, 14, 'http://www.rippingutkowski.org/', NULL, NULL, '2002-09-30 03:39:55', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (73, 2, 1, 'http://bogan.com/', NULL, NULL, '1975-02-18 01:44:25', '1977-01-08 07:27:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (74, 3, 66, 'http://www.dickenspfannerstill.com/', NULL, NULL, '1974-03-10 23:17:00', '1970-04-04 18:08:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (75, 3, 80, 'http://metzbalistreri.com/', NULL, NULL, '1970-01-21 14:43:09', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (76, 2, 63, 'http://aufderhar.biz/', NULL, NULL, '2007-03-02 01:03:48', '1976-05-03 22:36:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (77, 3, 38, 'http://www.herman.org/', NULL, NULL, '1994-10-20 10:59:02', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (78, 1, 54, 'http://oconner.com/', NULL, NULL, '1998-07-06 20:08:37', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (79, 3, 98, 'http://www.hickleebert.com/', NULL, NULL, '1971-02-27 01:24:00', '2013-09-29 17:14:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (80, 3, 47, 'http://harber.org/', NULL, NULL, '2014-05-27 18:29:14', '2001-05-08 04:19:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (81, 2, 50, 'http://www.abernathyroob.org/', NULL, NULL, '2014-10-14 18:35:00', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (82, 2, 34, 'http://www.wisozkdooley.com/', NULL, NULL, '1981-07-08 19:21:34', '2003-02-08 11:51:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (83, 1, 9, 'http://fay.biz/', NULL, NULL, '2006-02-14 19:16:04', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (84, 3, 29, 'http://www.kuvalis.com/', NULL, NULL, '1985-06-19 22:56:44', '1988-04-23 06:50:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (85, 1, 53, 'http://bergstromharvey.com/', NULL, NULL, '2011-09-11 07:02:27', '2007-04-19 19:12:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (86, 1, 82, 'http://www.kuhncorwin.com/', NULL, NULL, '1991-08-22 08:37:59', '1971-10-15 13:57:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (87, 2, 17, 'http://howe.info/', NULL, NULL, '1977-02-17 18:24:56', '1976-01-14 13:22:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (88, 3, 86, 'http://www.stroman.com/', NULL, NULL, '2010-12-07 09:29:41', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (89, 1, 88, 'http://kovacek.com/', NULL, NULL, '1999-06-18 10:46:54', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (90, 2, 92, 'http://www.swift.com/', NULL, NULL, '2008-03-12 19:24:32', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (91, 3, 89, 'http://www.kutch.biz/', NULL, NULL, '1972-01-29 01:31:11', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (92, 2, 45, 'http://www.murazikblock.org/', NULL, NULL, '1993-12-17 11:19:33', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (93, 1, 67, 'http://bayer.com/', NULL, NULL, '1974-02-18 03:59:02', '0000-00-00 00:00:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (94, 3, 21, 'http://senger.net/', NULL, NULL, '2014-11-04 20:05:06', '1989-03-24 16:24:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (95, 2, 88, 'http://reilly.com/', NULL, NULL, '1984-04-16 14:11:24', '1996-11-29 17:33:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (96, 2, 8, 'http://trompkeebler.com/', NULL, NULL, '1997-03-26 20:57:29', '1975-08-25 00:20:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (97, 2, 22, 'http://johnstonbuckridge.com/', NULL, NULL, '1987-01-18 21:46:38', '1983-01-25 02:18:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (98, 2, 40, 'http://www.morissettewaters.info/', NULL, NULL, '1980-10-26 17:44:37', '2019-02-22 22:54:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (99, 1, 16, 'http://www.gusikowski.com/', NULL, NULL, '1991-05-24 22:18:51', '1982-09-02 23:12:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `url`, `blob`, `metadata`, `created_at`, `updated_at`) VALUES (100, 3, 49, 'http://zulaufwisoky.net/', NULL, NULL, '2011-02-10 04:11:31', '1989-12-22 22:43:46');


#
# TABLE STRUCTURE FOR: media_type
#

DROP TABLE IF EXISTS `media_type`;

CREATE TABLE `media_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media_type` (`id`, `name`) VALUES (1, 'video');
INSERT INTO `media_type` (`id`, `name`) VALUES (2, 'audio');
INSERT INTO `media_type` (`id`, `name`) VALUES (3, 'img');


#
# TABLE STRUCTURE FOR: message
#

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int(10) unsigned NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  `media_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_message_user1_idx` (`from_user_id`),
  KEY `fk_message_user2_idx` (`to_user_id`),
  KEY `fk_message_media1_idx` (`media_id`),
  CONSTRAINT `fk_message_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_message_user1` FOREIGN KEY (`from_user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_message_user2` FOREIGN KEY (`to_user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (1, 51, 53, 'Incidunt consequuntur sint minus beatae rem nesciunt.', '1997-01-10 08:17:19', NULL, 1);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (2, 44, 92, 'Error error reprehenderit autem ipsum tempora.', '2000-06-10 05:43:31', NULL, 2);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (3, 73, 30, 'Quia nihil et dicta sunt atque officia.', '2016-09-23 15:01:35', NULL, 3);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (4, 46, 68, 'Non eos asperiores aspernatur accusantium voluptate mollitia.', '1970-06-14 20:21:59', NULL, 4);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (5, 46, 96, 'Aut et soluta nisi minima.', '1996-07-17 10:03:15', NULL, 5);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (6, 30, 78, 'Consequatur optio ut harum sequi aliquam in.', '1984-07-10 22:42:26', NULL, 6);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (7, 90, 97, 'Harum velit sed nihil enim deserunt dolorem.', '1986-06-23 15:08:29', NULL, 7);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (8, 28, 21, 'Nesciunt repudiandae dolorem rerum neque velit nam.', '1977-03-12 23:04:00', NULL, 8);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (9, 88, 75, 'Eos corrupti doloremque quia aut velit.', '2000-07-20 09:37:47', NULL, 9);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (10, 42, 39, 'Vel eveniet amet libero omnis sed voluptas maiores.', '1992-01-02 00:15:47', NULL, 10);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (11, 39, 49, 'Quaerat voluptatem laboriosam voluptas at blanditiis et dolorum.', '1973-08-03 22:42:28', NULL, 11);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (12, 30, 27, 'Autem in consequatur aut nemo maiores libero.', '2012-08-13 13:12:15', NULL, 12);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (13, 66, 25, 'Voluptas mollitia id voluptatem non quibusdam quam.', '1980-08-18 14:04:37', NULL, 13);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (14, 3, 23, 'Reprehenderit rem quibusdam aut dolor at asperiores.', '2014-12-20 11:12:37', NULL, 14);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (15, 92, 81, 'Ratione corporis quaerat ut ratione aut.', '1983-04-19 14:03:03', NULL, 15);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (16, 25, 42, 'Deleniti nihil minima quidem et sunt reprehenderit et.', '2002-08-14 17:41:07', NULL, 16);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (17, 34, 68, 'At est porro sunt sed possimus earum quis.', '2016-02-28 17:27:07', NULL, 17);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (18, 34, 6, 'Repellat culpa quia quaerat quaerat quas beatae veniam veritatis.', '1989-12-28 09:37:51', NULL, 18);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (19, 97, 80, 'Consequatur eos consequatur omnis rerum exercitationem.', '1992-05-31 23:51:36', NULL, 19);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (20, 74, 43, 'Eveniet provident non fugiat assumenda nihil eligendi dolorem.', '1981-08-21 13:18:19', NULL, 20);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (21, 75, 3, 'Sunt sunt repudiandae nulla corrupti.', '2008-07-23 23:29:48', NULL, 21);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (22, 20, 64, 'Sed fugit veniam sit rerum.', '2005-09-01 21:04:05', NULL, 22);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (23, 100, 48, 'Ut modi provident laboriosam et qui.', '2002-02-22 01:36:33', NULL, 23);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (24, 85, 88, 'Ex et voluptate eius consectetur iusto earum ipsum sed.', '2020-08-07 04:05:23', NULL, 24);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (25, 23, 26, 'Aut fuga quaerat voluptatem id facilis non sunt.', '2010-03-07 15:39:48', NULL, 25);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (26, 26, 61, 'Ducimus ut et rerum voluptatem doloremque labore sit.', '1970-08-26 11:16:58', NULL, 26);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (27, 75, 56, 'In et exercitationem perferendis in debitis quia.', '1994-06-04 03:15:48', NULL, 27);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (28, 88, 40, 'Quidem dicta quia maxime rerum.', '1985-06-13 05:41:22', NULL, 28);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (29, 80, 90, 'Similique voluptatem quidem officia sed harum.', '1984-05-18 10:48:52', NULL, 29);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (30, 62, 71, 'Expedita officia repellat nulla error unde reprehenderit et.', '2003-06-24 03:55:28', NULL, 30);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (31, 70, 87, 'Necessitatibus eveniet eos assumenda suscipit nostrum quis.', '1998-09-24 17:34:43', NULL, 31);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (32, 13, 4, 'Voluptatum excepturi nobis molestias totam hic et dolorum necessitatibus.', '2002-09-26 07:41:42', NULL, 32);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (33, 54, 46, 'Recusandae ducimus placeat tempore ducimus architecto.', '2006-12-09 15:37:51', NULL, 33);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (34, 9, 51, 'Illo quasi velit quo saepe facere id impedit harum.', '1980-08-27 00:35:51', NULL, 34);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (35, 25, 83, 'Architecto explicabo molestias facere optio et.', '1984-08-12 01:33:20', NULL, 35);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (36, 93, 100, 'Nisi ducimus enim earum est voluptates in.', '2020-02-23 17:35:17', NULL, 36);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (37, 86, 13, 'Velit eius dolorum velit.', '1997-01-08 06:12:08', NULL, 37);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (38, 64, 86, 'Laboriosam architecto rerum ut quo tenetur.', '2006-03-10 22:25:27', NULL, 38);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (39, 60, 49, 'Nam dignissimos sed ullam deserunt.', '1982-12-05 23:23:23', NULL, 39);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (40, 73, 82, 'Quo animi consectetur ipsa.', '1988-06-02 19:37:13', NULL, 40);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (41, 75, 99, 'Quod laudantium alias at cumque.', '1986-07-25 01:54:17', NULL, 41);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (42, 43, 49, 'Eaque vel ad qui non vero dolores aspernatur.', '1992-05-01 04:19:01', NULL, 42);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (43, 54, 30, 'Illo rerum quo rerum dolore.', '1996-11-28 03:11:35', NULL, 43);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (44, 88, 33, 'Ab ut corporis distinctio nostrum.', '2007-04-04 17:13:06', NULL, 44);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (45, 19, 50, 'Iure laboriosam illum voluptas dolor sit.', '2006-05-13 14:37:19', NULL, 45);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (46, 4, 89, 'Dolor id numquam ut nisi.', '1981-11-06 20:14:31', NULL, 46);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (47, 36, 16, 'Qui et adipisci assumenda et et ipsam.', '2007-07-17 23:41:40', NULL, 47);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (48, 92, 90, 'Quo architecto quae exercitationem blanditiis autem sed.', '2011-04-18 15:45:23', NULL, 48);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (49, 62, 1, 'Dolore laboriosam ut veritatis ratione similique molestiae quisquam.', '1981-11-26 00:12:55', NULL, 49);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (50, 40, 87, 'Ut reiciendis incidunt ex nemo et ut quasi.', '2004-05-19 10:26:01', NULL, 50);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (51, 84, 33, 'Velit autem quis magnam sint.', '1998-09-13 19:49:19', NULL, 51);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (52, 86, 69, 'Dolores libero error repellendus.', '1999-05-10 10:21:15', NULL, 52);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (53, 45, 50, 'Deleniti aliquam quam accusantium tempore.', '2014-06-22 13:13:55', NULL, 53);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (54, 54, 5, 'Et exercitationem voluptas impedit consequatur consequatur recusandae.', '1970-10-09 02:01:31', NULL, 54);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (55, 98, 27, 'Et non ea eligendi et voluptatem.', '2006-06-16 05:56:49', NULL, 55);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (56, 87, 72, 'Laborum nihil ducimus eaque aliquid qui occaecati.', '2015-01-24 19:53:56', NULL, 56);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (57, 25, 30, 'Quaerat id et et aliquid quia sit.', '2003-06-15 00:27:20', NULL, 57);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (58, 20, 78, 'Beatae eveniet asperiores suscipit.', '2001-08-12 09:25:39', NULL, 58);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (59, 59, 8, 'Accusamus assumenda impedit commodi odio sit eligendi eum commodi.', '2003-02-09 07:49:19', NULL, 59);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (60, 11, 78, 'Sint cumque perferendis voluptate soluta itaque quod.', '2004-11-08 07:11:09', NULL, 60);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (61, 58, 15, 'Nam inventore quas occaecati nihil quidem ut.', '1995-06-11 01:34:57', NULL, 61);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (62, 67, 94, 'Dolor facilis labore dolor.', '1976-07-05 02:11:10', NULL, 62);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (63, 31, 59, 'Eos tenetur assumenda est ut necessitatibus assumenda laborum consequatur.', '2000-08-27 03:31:46', NULL, 63);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (64, 83, 92, 'Ullam expedita est quidem voluptas.', '2011-01-14 22:06:21', NULL, 64);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (65, 60, 23, 'Qui dolore sint tempore.', '1995-04-04 19:57:52', NULL, 65);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (66, 79, 43, 'Exercitationem omnis explicabo cupiditate enim et porro sit.', '1998-08-11 23:19:52', NULL, 66);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (67, 56, 65, 'Sed illo voluptatem quia reiciendis.', '2013-05-16 08:59:57', NULL, 67);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (68, 12, 100, 'Exercitationem nulla nemo explicabo aut et.', '1987-01-30 21:41:35', NULL, 68);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (69, 14, 66, 'Accusantium quia quis consequatur suscipit recusandae quia quae.', '2013-05-17 23:17:36', NULL, 69);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (70, 5, 11, 'Accusamus odio saepe voluptatum deleniti ea.', '1973-11-28 23:05:26', NULL, 70);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (71, 92, 92, 'Quisquam hic corrupti aliquam libero.', '2001-06-09 19:07:30', NULL, 71);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (72, 83, 16, 'Fugiat necessitatibus ducimus perferendis quae sapiente.', '1972-04-08 14:44:14', NULL, 72);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (73, 21, 2, 'Et aut quidem quia consectetur.', '1986-12-02 04:35:32', NULL, 73);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (74, 94, 80, 'Sequi ut consectetur ipsa quis eos.', '1970-06-14 05:20:58', NULL, 74);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (75, 10, 5, 'Qui velit labore nostrum at fugit.', '1996-02-25 23:49:07', NULL, 75);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (76, 57, 68, 'Et minus a eveniet iusto molestias asperiores enim.', '2013-03-07 12:20:09', NULL, 76);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (77, 19, 24, 'Nesciunt dolores consectetur repellendus quia quis non sequi.', '1971-02-05 15:51:25', NULL, 77);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (78, 61, 50, 'Suscipit necessitatibus consequatur quasi quas dolor.', '2003-01-10 19:39:21', NULL, 78);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (79, 83, 44, 'Enim qui consequatur hic amet ex ullam.', '1978-09-20 02:54:24', NULL, 79);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (80, 42, 42, 'Dicta veritatis deserunt sed cumque et laudantium asperiores tenetur.', '1983-02-03 18:42:13', NULL, 80);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (81, 66, 20, 'Quaerat dolores nisi aut odit deleniti fugit ullam quidem.', '1993-05-25 12:15:01', NULL, 81);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (82, 85, 21, 'Ipsam soluta perspiciatis repellat ut occaecati ut blanditiis.', '2020-10-05 07:05:00', NULL, 82);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (83, 84, 96, 'Et nisi accusantium cumque et.', '2015-12-21 18:46:48', NULL, 83);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (84, 21, 97, 'Cupiditate quia sit ratione aspernatur.', '2003-08-15 19:48:09', NULL, 84);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (85, 61, 26, 'Pariatur iure placeat blanditiis non.', '2004-12-14 01:09:19', NULL, 85);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (86, 8, 53, 'Voluptatem officiis praesentium impedit est voluptates expedita.', '2012-10-30 16:51:01', NULL, 86);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (87, 17, 90, 'Est dolores aperiam sit ut.', '2018-05-24 01:03:03', NULL, 87);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (88, 69, 37, 'Et rerum quo eius odit quasi et sapiente.', '1996-01-09 17:39:18', NULL, 88);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (89, 92, 62, 'Aliquam ut voluptatem voluptatem ullam.', '2007-03-27 02:00:05', NULL, 89);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (90, 16, 2, 'Ut necessitatibus sunt possimus.', '1983-07-13 05:59:34', NULL, 90);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (91, 67, 73, 'Iusto labore ut et assumenda voluptas accusamus sed.', '1993-08-03 05:04:33', NULL, 91);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (92, 69, 86, 'Laudantium officia porro ipsam officiis velit.', '1992-11-08 19:45:20', NULL, 92);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (93, 97, 29, 'Quia et repellendus iste ut.', '1993-05-20 10:14:40', NULL, 93);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (94, 35, 79, 'Non culpa est quae est est.', '1988-04-17 02:52:34', NULL, 94);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (95, 72, 76, 'Dolores rerum cumque illo omnis voluptas perspiciatis.', '1999-11-04 01:38:57', NULL, 95);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (96, 20, 38, 'Voluptatem est cupiditate voluptatem et a exercitationem.', '1986-07-31 20:15:58', NULL, 96);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (97, 96, 5, 'Suscipit est veritatis sit minima voluptatum.', '1992-06-15 18:19:06', NULL, 97);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (98, 59, 80, 'Ea sit a consectetur itaque beatae libero.', '1998-08-02 18:36:15', NULL, 98);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (99, 100, 80, 'Et aut est nesciunt asperiores.', '1998-09-25 05:18:47', NULL, 99);
INSERT INTO `message` (`id`, `from_user_id`, `to_user_id`, `text`, `created_at`, `deleted_at`, `media_id`) VALUES (100, 77, 61, 'Sed autem impedit eos.', '2005-03-01 20:11:08', NULL, 100);


#
# TABLE STRUCTURE FOR: post
#

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `community_id` int(10) unsigned DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_id` int(10) unsigned DEFAULT NULL,
  `post_id` int(10) unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `fk_post_user1_idx` (`user_id`),
  KEY `fk_post_community1_idx` (`community_id`),
  KEY `fk_post_media1_idx` (`media_id`),
  KEY `fk_post_post1_idx` (`post_id`),
  CONSTRAINT `fk_post_community1` FOREIGN KEY (`community_id`) REFERENCES `community` (`id`),
  CONSTRAINT `fk_post_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_post_post1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  CONSTRAINT `fk_post_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (1, 45, 3, 'Veniam deserunt corporis minus dolorem.', 51, NULL, '1971-01-06 20:49:09');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (2, 26, 10, 'Sunt quia et quis blanditiis reprehenderit dolorum.', 13, NULL, '2011-01-25 01:55:38');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (3, 9, 10, 'Atque possimus perspiciatis ut et ut.', 30, NULL, '2012-02-09 21:18:04');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (4, 53, 1, 'Et corrupti laudantium est.', 46, NULL, '2010-11-03 07:52:59');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (5, 7, 9, 'Vel velit reiciendis illo perspiciatis ea laborum.', 34, NULL, '1972-01-11 12:35:00');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (6, 37, 1, 'Cupiditate praesentium perspiciatis et et molestias voluptates.', 98, NULL, '2006-04-10 16:59:15');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (7, 32, 6, 'Itaque rerum asperiores aut.', 2, NULL, '1979-09-19 20:56:54');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (8, 39, 4, 'Nostrum voluptas est minus aut quis.', 77, NULL, '1973-12-07 08:36:29');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (9, 39, 10, 'Voluptatem optio quia rerum quos qui molestias est voluptatem.', 84, NULL, '1993-05-12 09:47:16');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (10, 43, 4, 'Ut soluta cumque vel.', 4, NULL, '1982-04-22 04:21:43');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (11, 59, 8, 'Sunt explicabo maiores aut tenetur numquam non.', 29, NULL, '1988-10-09 12:40:56');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (12, 9, 1, 'Vel corrupti est est natus officia quia placeat.', 24, NULL, '2000-10-26 16:55:04');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (13, 22, 2, 'Accusantium maxime rerum ex dolores.', 23, NULL, '2020-01-21 08:08:14');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (14, 51, 7, 'Dolorem quam ullam autem quod iusto exercitationem pariatur et.', 23, NULL, '1971-11-21 02:10:11');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (15, 97, 8, 'Et sequi voluptate aut sapiente perferendis et laudantium qui.', 5, NULL, '2015-02-18 03:37:34');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (16, 30, 1, 'Quo nostrum est et autem maiores aspernatur.', 9, NULL, '2001-10-12 02:19:30');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (17, 28, 4, 'Eum commodi facere dolorem qui.', 62, NULL, '1983-05-13 21:54:50');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (18, 29, 8, 'Sed est enim voluptatem eligendi accusantium.', 2, NULL, '2005-01-26 18:53:36');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (19, 5, 2, 'Incidunt molestiae esse dicta explicabo et.', 95, NULL, '1996-02-18 11:27:18');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (20, 88, 6, 'Odio ex ab libero nihil in est non id.', 29, NULL, '2010-02-26 23:14:18');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (21, 91, 2, 'Ut dolorem id aut aperiam reprehenderit veritatis et.', 6, NULL, '2007-03-29 15:44:37');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (22, 20, 3, 'Perferendis voluptatem reiciendis aliquam quas est.', 9, NULL, '2019-07-19 11:14:16');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (23, 44, 5, 'Alias maiores culpa maiores et quaerat consequuntur at.', 20, NULL, '1995-01-18 02:30:29');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (24, 66, 10, 'Ad natus ut nulla illum dolores.', 84, NULL, '2002-09-22 09:23:11');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (25, 88, 10, 'Consectetur perferendis consequatur omnis est nemo neque odio.', 55, NULL, '1980-11-14 00:06:31');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (26, 93, 3, 'Voluptate aut error ad impedit.', 62, NULL, '1983-02-08 16:46:18');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (27, 1, 5, 'Impedit sit labore recusandae est maiores aut aperiam soluta.', 1, NULL, '2009-01-21 23:21:01');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (28, 62, 8, 'Qui consectetur illo et eligendi.', 78, NULL, '2002-04-02 14:36:42');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (29, 64, 9, 'Minima maiores eveniet iusto fugiat officiis iste.', 94, NULL, '2007-06-28 05:51:29');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (30, 58, 7, 'Velit debitis error qui iure doloremque quidem.', 52, NULL, '2000-09-18 04:59:48');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (31, 87, 7, 'Adipisci id fuga autem.', 69, NULL, '1973-09-30 20:03:50');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (32, 93, 9, 'Eaque ab et cum odit omnis ea.', 95, NULL, '1985-06-19 05:36:32');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (33, 1, 3, 'Aut maxime accusamus et.', 41, NULL, '1987-09-30 23:54:40');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (34, 21, 9, 'Sed inventore aut perferendis excepturi ratione rem ad.', 38, NULL, '2000-07-04 05:08:57');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (35, 5, 8, 'Deserunt voluptatem dolor quia molestiae quis quis at.', 31, NULL, '2014-06-19 10:11:24');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (36, 59, 7, 'Ut illo hic aspernatur veritatis quis consequatur.', 53, NULL, '2005-03-08 20:01:18');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (37, 20, 7, 'Consequatur doloremque voluptatum dolor numquam eos amet assumenda.', 2, NULL, '2017-10-01 00:34:09');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (38, 20, 4, 'Illum dolores deleniti non dolor quidem.', 80, NULL, '2005-11-28 06:48:33');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (39, 97, 10, 'Sequi labore vitae cum eum consequatur voluptas quasi.', 62, NULL, '1997-02-19 12:06:49');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (40, 91, 6, 'Dolores occaecati vero consequatur sit officia sit.', 31, NULL, '1970-03-07 13:53:41');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (41, 43, 4, 'Dignissimos qui qui repellendus dignissimos et.', 92, NULL, '1975-12-02 18:04:29');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (42, 12, 4, 'Dolorum sint iste itaque mollitia nihil.', 72, NULL, '2005-06-14 07:40:49');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (43, 6, 4, 'Consequatur explicabo eum incidunt nostrum sed.', 95, NULL, '1987-10-10 19:56:20');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (44, 46, 6, 'Voluptas provident architecto debitis deserunt est iusto tempora.', 84, NULL, '2018-03-11 14:45:19');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (45, 84, 6, 'Inventore sint qui dolorem maiores molestias sunt nesciunt.', 61, NULL, '1988-01-07 10:44:49');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (46, 14, 2, 'Et quis commodi voluptas laborum.', 29, NULL, '1981-06-08 18:58:36');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (47, 67, 4, 'Repellat et quam odio incidunt.', 99, NULL, '2012-12-17 02:00:51');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (48, 69, 6, 'Sunt facere libero animi dolor neque.', 30, NULL, '2008-04-23 20:35:27');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (49, 48, 6, 'Aut dolores dolores qui cupiditate.', 24, NULL, '1985-01-02 12:01:31');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (50, 10, 5, 'Soluta adipisci omnis illum hic et officiis.', 77, NULL, '1987-03-29 03:56:07');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (51, 41, 9, 'Est asperiores ratione facere et rerum nobis nemo.', 15, NULL, '2004-11-02 03:42:04');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (52, 32, 10, 'A et eius magni dolores aut ea.', 46, NULL, '1976-10-05 13:56:25');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (53, 3, 10, 'Dolores ipsa commodi ab pariatur labore odio aut.', 77, NULL, '2008-07-16 06:30:43');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (54, 98, 5, 'Quo fugit et ut consequatur voluptatem.', 29, NULL, '2001-05-04 19:49:20');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (55, 82, 3, 'Et fuga sapiente pariatur sequi.', 85, NULL, '1980-06-27 02:27:22');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (56, 42, 5, 'Molestiae et a recusandae nesciunt ea voluptatem veritatis.', 99, NULL, '1998-06-02 21:40:46');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (57, 71, 1, 'Voluptates sint et voluptate consequatur est nihil rem.', 33, NULL, '2011-09-30 07:40:08');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (58, 69, 8, 'Nesciunt dolores et cupiditate aspernatur.', 87, NULL, '2006-09-03 04:36:07');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (59, 98, 3, 'Eum qui voluptatibus laborum mollitia aut repellendus.', 38, NULL, '1972-02-13 19:29:19');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (60, 22, 4, 'Eius et assumenda nostrum.', 79, NULL, '2009-08-15 15:47:51');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (61, 98, 8, 'Nihil in architecto consequatur est laborum quo.', 63, NULL, '2012-05-26 19:58:51');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (62, 13, 1, 'Est dolore nobis ut voluptatum.', 57, NULL, '1994-10-14 15:52:10');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (63, 58, 1, 'Eos harum dicta sint commodi quia consectetur.', 57, NULL, '1982-09-12 14:07:52');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (64, 35, 1, 'Ad nobis est ullam officia ducimus sunt rerum.', 3, NULL, '2010-07-08 16:11:57');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (65, 63, 9, 'Sed atque itaque assumenda.', 32, NULL, '2011-01-25 20:12:19');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (66, 47, 4, 'Amet enim in ipsum sequi minus.', 75, NULL, '2017-06-29 13:33:30');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (67, 46, 1, 'Deleniti ea eius aut sint nihil quisquam quaerat.', 85, NULL, '2000-02-25 08:06:35');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (68, 79, 7, 'Quod laboriosam dolorem eveniet similique laudantium ut.', 64, NULL, '1997-04-07 19:15:58');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (69, 65, 7, 'Ea at minus itaque voluptatem non accusamus.', 91, NULL, '1978-11-03 23:20:40');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (70, 3, 9, 'Commodi amet perspiciatis ut ducimus.', 26, NULL, '1993-06-12 06:13:44');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (71, 81, 9, 'Asperiores aperiam saepe animi.', 2, NULL, '2003-12-23 00:08:46');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (72, 43, 10, 'Qui dolorem quidem sunt sunt.', 9, NULL, '1976-12-18 10:08:28');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (73, 100, 6, 'Ex a vel reiciendis.', 19, NULL, '2014-10-22 02:27:43');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (74, 56, 10, 'Voluptas et ratione quas velit.', 27, NULL, '2015-12-04 11:25:28');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (75, 59, 6, 'Nulla ad possimus corrupti qui eveniet cupiditate voluptate.', 16, NULL, '1993-11-22 15:22:40');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (76, 90, 10, 'Sed commodi officia libero rerum error.', 46, NULL, '1989-01-16 23:18:37');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (77, 65, 5, 'Blanditiis dicta expedita qui quod esse aspernatur dicta.', 47, NULL, '2014-09-16 04:22:11');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (78, 50, 3, 'Ea molestiae ut quas expedita eius.', 15, NULL, '1978-12-20 17:49:19');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (79, 13, 9, 'Quos quasi saepe placeat et molestiae consequatur tenetur ut.', 82, NULL, '1971-07-06 10:02:58');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (80, 3, 9, 'Assumenda voluptas accusantium at sit suscipit repudiandae.', 70, NULL, '2007-06-30 14:03:08');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (81, 29, 7, 'Harum mollitia deleniti fuga quia et cumque et.', 56, NULL, '2006-10-04 16:40:09');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (82, 31, 2, 'Veniam sed dignissimos enim recusandae.', 54, NULL, '1992-11-01 18:34:45');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (83, 40, 2, 'Quidem tempore qui natus aperiam.', 10, NULL, '1983-03-10 13:16:17');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (84, 58, 7, 'Veniam nemo vero eum sapiente minima et ducimus.', 100, NULL, '1987-11-29 11:28:38');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (85, 85, 3, 'Non non quam amet et voluptatem rerum.', 53, NULL, '2006-10-10 10:28:00');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (86, 100, 2, 'Ut culpa eos ratione perspiciatis.', 52, NULL, '1977-07-30 05:23:01');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (87, 46, 8, 'Pariatur nihil corrupti temporibus.', 96, NULL, '1995-09-01 16:04:22');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (88, 92, 3, 'Exercitationem architecto laudantium ut consectetur vero nihil expedita.', 18, NULL, '2006-09-10 05:46:33');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (89, 7, 5, 'Quidem maxime fugit aliquam ut non quod aliquam.', 4, NULL, '1991-01-19 05:06:14');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (90, 88, 5, 'Et sapiente dicta et vel corporis.', 93, NULL, '2004-07-13 22:45:37');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (91, 57, 8, 'Quidem officiis placeat velit aperiam officia reiciendis.', 63, NULL, '1970-09-07 01:32:12');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (92, 12, 1, 'Dolorem sit et asperiores nihil neque.', 75, NULL, '2005-07-31 20:04:38');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (93, 66, 5, 'Aut dicta dolor velit quam.', 86, NULL, '1988-05-18 05:51:17');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (94, 75, 1, 'Corporis est iusto et perspiciatis.', 53, NULL, '2014-12-27 05:22:02');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (95, 75, 9, 'Voluptatum et ipsam dolorem earum.', 78, NULL, '1980-12-09 07:31:05');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (96, 27, 9, 'Rerum rerum et totam occaecati consequatur facere.', 92, NULL, '2005-03-30 21:58:14');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (97, 79, 3, 'Possimus sit voluptatem quis eaque est voluptatem.', 72, NULL, '1989-07-08 11:51:00');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (98, 74, 3, 'Provident exercitationem voluptates quia mollitia fuga omnis qui.', 100, NULL, '2013-12-26 05:09:01');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (99, 91, 3, 'Est omnis eius labore porro.', 41, NULL, '2018-06-21 12:18:32');
INSERT INTO `post` (`id`, `user_id`, `community_id`, `text`, `media_id`, `post_id`, `created_at`) VALUES (100, 94, 2, 'Iusto enim voluptatem voluptatibus omnis nisi.', 86, NULL, '2020-03-27 08:07:51');


#
# TABLE STRUCTURE FOR: profile
#

DROP TABLE IF EXISTS `profile`;

CREATE TABLE `profile` (
  `user_id` int(10) unsigned NOT NULL,
  `firstname` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `gender` enum('m','f','x') COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(245) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_profile_media1_idx` (`media_id`),
  CONSTRAINT `fk_profile_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_profile_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (1, 'Trace', 'Prohaska', '2004-03-30', 'm', '47136 Laverna Village Apt. 855', 27);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (2, 'Betsy', 'Gleason', '1976-11-22', 'm', '404 Haley Via', 7);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (3, 'Cornelius', 'Haag', '1985-06-29', 'f', '7726 Andre Lights', 45);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (4, 'Sigrid', 'Fahey', '2000-03-28', 'f', '805 Marcelo Route', 22);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (5, 'Ivy', 'Conroy', '1999-04-15', 'm', '6554 Glenna Estates Suite 043', 83);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (6, 'Elvera', 'Orn', '1974-09-05', 'f', '4080 Bartoletti Meadow Apt. 829', 67);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (7, 'Emilio', 'Roob', '1970-06-07', 'm', '55713 Albin Island', 84);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (8, 'Rose', 'Monahan', '1970-12-15', 'f', '38950 Watsica Avenue Suite 609', 43);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (9, 'Brennan', 'Walker', '1990-12-08', 'f', '78444 Elinor Green', 21);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (10, 'Kaycee', 'Berge', '1998-06-10', 'm', '0876 Ardella Mountain Suite 437', 99);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (11, 'Yoshiko', 'Mohr', '2002-08-10', 'm', '68423 Delta Station', 99);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (12, 'Maria', 'Wisoky', '2010-10-31', 'm', '73948 Baumbach Trafficway Apt. 903', 100);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (13, 'Carole', 'Sauer', '1975-01-26', 'f', '465 Harber Motorway Apt. 506', 95);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (14, 'Annette', 'Funk', '1977-01-01', 'm', '1121 Alia Fort', 28);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (15, 'Dallin', 'Hackett', '1981-04-27', 'f', '26602 Brown Mountain', 90);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (16, 'Arlie', 'Hettinger', '1977-10-27', 'f', '6604 Rossie Shoal Apt. 213', 88);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (17, 'Marcus', 'Gorczany', '1984-01-30', 'm', '626 Zemlak Rapids', 15);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (18, 'Ophelia', 'Stokes', '1997-04-25', 'f', '712 Mraz Knoll', 34);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (19, 'Jessie', 'Schmeler', '1999-12-15', 'f', '77698 Pfannerstill Isle', 18);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (20, 'Lyric', 'Gerhold', '2013-01-03', 'm', '1246 Klocko Wells Apt. 357', 89);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (21, 'Marjorie', 'Flatley', '2006-02-14', 'f', '8332 Turner Vista Apt. 299', 72);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (22, 'Grover', 'Yundt', '1982-01-28', 'm', '066 Noah Plaza Apt. 176', 72);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (23, 'Lulu', 'Satterfield', '2007-03-31', 'f', '4655 Jakubowski View Apt. 443', 82);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (24, 'Kameron', 'Kemmer', '1995-08-18', 'f', '433 Parker Brooks', 34);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (25, 'Bonita', 'Rau', '2015-07-21', 'm', '809 Ryan Stream', 19);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (26, 'Julien', 'Johnson', '1986-02-12', 'f', '7478 Itzel Harbor', 63);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (27, 'Ruthie', 'Abbott', '1972-09-11', 'm', '32394 Cremin Road', 84);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (28, 'Jonathan', 'Bauch', '2004-05-08', 'f', '91929 Kaitlyn Isle Apt. 745', 40);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (29, 'Joshuah', 'Hoppe', '2021-02-25', 'm', '26402 Rose Street', 42);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (30, 'Vita', 'Hills', '2020-01-20', 'm', '0718 Auer Field Suite 298', 98);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (31, 'Bridgette', 'Schiller', '2018-09-05', 'm', '70114 Oceane Throughway Suite 124', 62);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (32, 'Kiara', 'Walsh', '1990-05-03', 'f', '04543 Dibbert Drive', 68);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (33, 'Alfonzo', 'Fritsch', '1986-03-25', 'f', '69955 Braun Parkways', 5);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (34, 'Candice', 'Boehm', '1983-04-10', 'm', '38744 Johnston Place Apt. 031', 7);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (35, 'Johanna', 'Crona', '1981-03-07', 'f', '979 Grant Divide Apt. 472', 89);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (36, 'Margaret', 'Kirlin', '2017-12-11', 'f', '2954 Bertha Walks', 87);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (37, 'Alfonzo', 'Dooley', '1986-12-31', 'f', '39727 Selena Coves Suite 030', 73);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (38, 'Walter', 'Spencer', '1981-07-03', 'f', '179 Ebony Ferry Apt. 835', 73);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (39, 'Chet', 'Senger', '1981-01-03', 'm', '06581 Ritchie Lake Suite 182', 30);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (40, 'Brett', 'Goyette', '2006-07-25', 'f', '875 Hermiston Squares', 93);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (41, 'Eloy', 'Reinger', '1970-04-08', 'm', '7286 Louvenia Mall', 71);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (42, 'Kane', 'Monahan', '2007-01-29', 'm', '4387 Jayden Village Suite 714', 28);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (43, 'Jalyn', 'Weissnat', '1988-02-16', 'f', '5286 Oberbrunner Rapids Suite 467', 93);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (44, 'Gabrielle', 'Christiansen', '1973-08-28', 'm', '8877 Simonis Cliffs', 65);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (45, 'Georgette', 'Jakubowski', '1972-10-04', 'f', '050 Simonis Bridge Apt. 613', 56);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (46, 'Brad', 'Little', '2009-06-07', 'm', '217 Federico Lodge Apt. 013', 83);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (47, 'Dave', 'Crooks', '1970-02-11', 'm', '2643 Ambrose Corners Apt. 159', 53);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (48, 'Declan', 'Macejkovic', '2002-04-18', 'm', '717 Stanton Port', 71);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (49, 'Kane', 'Denesik', '2014-12-08', 'm', '6443 Larson Court Apt. 740', 16);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (50, 'Jettie', 'Parker', '2018-02-17', 'f', '9469 Margaret Landing Suite 060', 70);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (51, 'Tyra', 'Cole', '1986-12-05', 'f', '091 Klocko Manors', 59);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (52, 'Adalberto', 'Grimes', '2003-09-01', 'm', '97138 Schmeler Stravenue', 88);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (53, 'Mckayla', 'Pagac', '1998-06-25', 'm', '23318 Erdman Motorway', 42);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (54, 'Callie', 'Terry', '2000-12-27', 'f', '85680 Savanah Crossing', 41);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (55, 'Abbigail', 'Bartell', '1994-12-28', 'm', '2678 Towne Mill Apt. 096', 21);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (56, 'Vicente', 'Reichel', '2000-03-13', 'f', '500 Dameon Lock', 61);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (57, 'Grover', 'McLaughlin', '2019-12-08', 'm', '9372 Lebsack Harbor', 4);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (58, 'Benjamin', 'Brekke', '1979-04-20', 'f', '936 Kautzer Ville Apt. 897', 4);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (59, 'Burnice', 'Kunde', '1977-12-11', 'm', '6646 Kovacek Isle Suite 277', 100);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (60, 'Diego', 'Bergnaum', '2006-06-05', 'f', '379 Aurelia Brook Suite 630', 45);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (61, 'Rickey', 'Wisozk', '2020-07-13', 'f', '55620 Daugherty Courts', 2);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (62, 'Tatum', 'Ryan', '2017-06-18', 'm', '91962 Louie Mall Suite 621', 62);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (63, 'Betty', 'Leannon', '1983-09-20', 'm', '45098 Jarrell Crossing', 13);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (64, 'Oma', 'Feeney', '1978-11-26', 'm', '58383 Goodwin Divide Suite 820', 6);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (65, 'Jenifer', 'Franecki', '1997-10-04', 'm', '0519 Wisoky Landing Suite 439', 69);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (66, 'Willard', 'O\'Kon', '1980-06-11', 'f', '8449 White Causeway', 1);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (67, 'Esmeralda', 'Collins', '1981-10-01', 'm', '10950 Kub Crossroad', 93);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (68, 'Josephine', 'Mante', '1994-06-15', 'f', '6933 Schmitt Villages', 42);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (69, 'Judge', 'Powlowski', '2006-04-22', 'f', '34001 Kuhlman Plain Apt. 434', 74);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (70, 'Clovis', 'VonRueden', '2011-11-04', 'f', '12395 Boyer Drives', 22);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (71, 'Filiberto', 'Jaskolski', '2010-01-06', 'f', '69080 Tyrese Loaf Suite 838', 35);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (72, 'Dustin', 'Kshlerin', '1990-11-25', 'f', '80930 Veum Manors Suite 713', 44);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (73, 'Leopold', 'Schuppe', '1989-06-15', 'm', '7000 Arnaldo Courts', 50);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (74, 'Catharine', 'Witting', '2007-06-03', 'm', '2159 Kaia Streets', 27);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (75, 'Briana', 'Mitchell', '1986-02-10', 'm', '467 Jessica Terrace Apt. 137', 8);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (76, 'Anderson', 'Corkery', '1990-12-03', 'f', '4512 Moen Ranch Suite 116', 5);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (77, 'Clyde', 'Hahn', '2013-03-04', 'f', '09738 Windler Brooks Suite 145', 9);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (78, 'Guido', 'Emard', '2001-04-16', 'm', '26600 Angus Loop', 61);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (79, 'Shaun', 'Hessel', '2014-05-27', 'm', '514 Ayden Dale', 76);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (80, 'Berta', 'Cremin', '1973-01-24', 'm', '57643 Carlee Shores Suite 965', 25);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (81, 'Tara', 'Hoeger', '2014-06-05', 'm', '0458 Reichel Freeway', 30);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (82, 'Kaitlin', 'Jacobi', '1998-07-11', 'f', '6193 Kay Branch', 34);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (83, 'Bonita', 'Abshire', '1983-05-03', 'm', '1643 Reta Estates Apt. 938', 12);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (84, 'Kennith', 'Wintheiser', '2015-08-28', 'm', '1161 Rice Freeway Apt. 149', 72);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (85, 'Christina', 'Connelly', '1994-02-23', 'f', '504 Bergstrom Path Apt. 813', 75);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (86, 'Geo', 'Parker', '2006-01-08', 'f', '34005 Williamson Lane', 32);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (87, 'Jensen', 'Torp', '2014-05-24', 'f', '8794 Marion Point Suite 861', 33);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (88, 'Doyle', 'Becker', '1980-03-15', 'f', '863 Koss Drives Apt. 997', 79);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (89, 'Yazmin', 'Johnston', '1992-06-14', 'm', '0779 Rodriguez Square', 36);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (90, 'Hayley', 'Roob', '2013-09-23', 'm', '0027 Koelpin Fort Apt. 837', 32);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (91, 'Arnaldo', 'Mayer', '1973-02-19', 'f', '7466 Gerhold Unions', 24);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (92, 'Rachael', 'Carroll', '1976-06-22', 'm', '975 Hartmann Divide Apt. 703', 38);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (93, 'Emil', 'Prosacco', '2003-04-08', 'f', '0136 West Shoals Suite 362', 94);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (94, 'Stefan', 'Will', '1977-10-05', 'f', '0177 Tillman Corners', 36);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (95, 'Kobe', 'Orn', '2009-04-04', 'm', '9342 Gerhold Shore Suite 940', 43);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (96, 'Harley', 'Cummings', '1974-03-23', 'f', '26999 Gerard Ways Apt. 809', 63);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (97, 'Ona', 'Marvin', '1992-12-19', 'f', '56288 Reinger Expressway', 37);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (98, 'Houston', 'Oberbrunner', '2002-06-17', 'f', '53505 Terrence Grove', 35);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (99, 'Domingo', 'Reichel', '1975-05-27', 'm', '6540 Grover Shoal', 4);
INSERT INTO `profile` (`user_id`, `firstname`, `lastname`, `birthday`, `gender`, `address`, `media_id`) VALUES (100, 'Kurtis', 'Lowe', '1987-09-22', 'f', '1103 Uriel Forge Suite 139', 10);


#
# TABLE STRUCTURE FOR: user
#

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint(20) NOT NULL,
  `password_hash` char(65) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 'alice.o\'hara@example.org', '79806573712', 'ab9b14ae5cb2ed6c1438ce1d0a54181b32636309', '1986-05-13 17:42:23', '1977-10-22 04:05:22', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (2, 'myron.mann@example.org', '79510408892', '75a191af5111fb290ab16058362f081567b501ca', '2019-03-28 06:16:33', '1971-10-11 15:34:22', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (3, 'jaunita64@example.net', '79705682295', 'e9d060738b288a2c090b75ef9c9f5c1e80daf291', '2010-11-29 05:31:51', '2020-05-17 07:26:51', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (4, 'kshlerin.jennie@example.org', '79918723149', 'dc7d1831590069163025a8cdc0c8fcfe674012e4', '2018-12-07 22:14:05', '1995-08-24 08:43:06', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (5, 'lauryn95@example.org', '79084909687', 'e7ad509639c080e4aafea68781f28645d58d1997', '1977-10-03 23:03:09', '1996-07-30 20:33:13', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (6, 'legros.maxie@example.com', '79768504994', '2af39b65f0436aa5b235a4d85e30b400cd065e18', '1994-10-24 11:17:54', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (7, 'schiller.nathanael@example.net', '79350612296', 'fde49319cac3d56ae4d125b8bb3df223443a3b01', '2020-12-15 10:03:41', '1973-09-03 03:47:49', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (8, 'hkuhlman@example.com', '79363600481', '433afa245274071659c49abb334038c027d07b93', '1987-11-07 03:28:33', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (9, 'ngislason@example.org', '79245337534', 'ccb1b1a6e4de352b1e4c9fe7560520714f30a825', '2020-06-18 08:54:03', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (10, 'lewis08@example.net', '79711202381', 'f50de323308a342e9c0ea1038e942c633bfcbfc7', '2008-12-29 06:54:05', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (11, 'anika16@example.org', '79647582851', '8bb00b02718a8538d9fffc74ad4e9fc26723ea45', '1997-09-24 04:15:08', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (12, 'bernhard.cecilia@example.net', '79829492891', 'bdcd283764e41afecb120e91564f186a4e9f5409', '2013-02-03 01:15:14', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (13, 'corkery.shakira@example.net', '79613892040', '6b809a259517476225510be54538be66cf103ca8', '1998-07-12 04:25:43', '1979-01-29 17:03:35', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (14, 'mjohnson@example.net', '79561492881', 'af3c366c22c56ece6bd1e8da9ce0b37cd4664428', '2009-12-19 23:33:07', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (15, 'bertram.collins@example.org', '79904038358', 'ce2c175bc849d9636b0b7a361fc59b1326921354', '1973-11-21 21:05:14', '1994-09-24 04:46:01', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (16, 'cassie.reinger@example.org', '79361888830', '4ff3a997ff89832e92168843e4236e780680d0b5', '1992-08-13 05:15:44', '1982-08-28 10:55:56', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (17, 'aurore.block@example.org', '79862236281', '0eca1b778dcc7373e1aa1c6571adf5f14bbdcd83', '2010-09-19 09:53:32', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (18, 'hschimmel@example.org', '79015744664', '451c859056b5643cf04befe7fc8ae727d0a2981c', '1989-03-16 18:39:32', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (19, 'soledad.barton@example.net', '79054515706', '745dfb1f0e8ddef2f42277dc3f5189ba037fa55f', '1994-03-11 10:46:14', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (20, 'florine75@example.com', '79599132882', '9ffca77522143b2faad53bb2040c26a4bff9e731', '2003-11-15 22:56:08', '1993-12-05 05:35:26', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (21, 'kozey.ricardo@example.com', '79579339619', 'de60c0309efd3f68eac03539e6a87271d8d6ef47', '2009-03-12 02:13:55', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (22, 'ttreutel@example.com', '79500945001', 'c4eb3fedbef47599e7df0eeabdbcf30da7f6ba74', '1984-11-16 10:12:14', '2020-06-26 03:38:31', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (23, 'sofia17@example.org', '79897103740', '410a93e045c31f399f8a78a6eaa73a5648cbc71f', '1988-09-17 16:44:08', '1991-08-25 10:24:29', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (24, 'brown.neil@example.org', '79648971545', '17cf324b8b15c5341357b95a5106114392050675', '2004-12-01 00:25:48', '2016-05-20 07:11:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (25, 'pollich.alvina@example.net', '79002818920', 'f21ecec4449313b91322187bd4c823451622d624', '1982-03-31 18:14:22', '2003-04-07 20:21:27', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (26, 'price.jana@example.org', '79544732467', '6ba980bac0208838bfba3aff1517d8cdc9b32a9c', '2005-02-07 02:21:06', '2021-02-03 13:27:48', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (27, 'ron63@example.com', '79927733035', 'ee445d92e2894c929f6c85190b5c33b00612d6a8', '2000-10-31 12:03:38', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (28, 'karlee.upton@example.net', '79914968479', 'd46573f26b5fda4eedcb4b3ece51b46354991d18', '1980-03-13 20:19:43', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (29, 'deja09@example.net', '79201211970', '2165ad91d617d6ea71333e8f5430e60f8212c49f', '1980-08-04 08:52:56', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (30, 'ewell90@example.net', '79123799918', '7f0092df6a3a2f1846b90f5ec01e41d55b86f8d6', '1991-02-23 05:58:56', '1989-06-19 17:18:19', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (31, 'hkonopelski@example.com', '79920192230', '504d419e23ead10c2d44b2a3fef6c1dc3444df1a', '1981-08-10 18:35:57', '1976-08-27 11:57:17', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (32, 'gking@example.com', '79594008669', 'a3901c9b7ef0af10d5c2f77d3cf79b2090e22345', '2010-07-21 19:27:06', '2002-02-16 01:44:14', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (33, 'eugenia.cartwright@example.com', '79072296226', '44f6931531a933901dc80ed1d84dc6efbe76acad', '1991-09-22 20:58:13', '1971-05-23 13:45:18', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (34, 'vhuel@example.net', '79706888543', 'b4b839392a2d9b604a8a03bd6e19d57bc833f77a', '2005-11-30 09:04:05', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (35, 'micaela26@example.com', '79683529069', '25a2dc7c368c01ba9365e2f4a335d45316222081', '2001-09-30 23:05:45', '1978-04-08 12:30:42', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (36, 'eusebio.o\'conner@example.com', '79714725623', '4f78c921324a678dea0ea332ee3e13c29a0b7585', '1970-08-30 00:50:04', '1994-02-22 13:12:56', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (37, 'wschaefer@example.org', '79571888927', '086d18f1c163832f788734e62aae79cf77df697a', '2003-04-08 19:39:49', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (38, 'keith44@example.com', '79420145573', '6ebefa8533df626581a6e3e0978bf9ab79bf46fb', '2009-03-29 01:33:03', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (39, 'darryl98@example.org', '79698980425', '8b79ae8a0264c0f406d3bd24e1eda222a32eeb10', '1993-04-11 14:55:55', '2011-02-12 16:04:30', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (40, 'chadrick74@example.com', '79142306290', 'd8237f23d2bd430f04a09712d76f34740a190198', '1986-12-25 06:31:37', '2010-08-29 15:28:40', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (41, 'homenick.camren@example.com', '79069023906', '304e5f3b92178cc97b58dee69bade3989588a42f', '1982-12-19 09:02:44', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (42, 'brown.maribel@example.org', '79173062751', 'e5664c127ed87a82d161d4077d5028f05ff3f84d', '2006-08-08 18:22:00', '1991-10-05 13:44:28', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (43, 'kattie.wunsch@example.net', '79241412578', '9577c74dadef95496666f217a3397ece30677f7e', '2010-03-12 12:49:40', '1986-09-24 21:09:23', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (44, 'katelynn.russel@example.net', '79252856346', 'f5aff200a993ae455329bfba41b8e5a51b05486f', '2009-11-21 10:42:46', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (45, 'storphy@example.com', '79727743050', '181d805a8d7f0af2433942083f31cb5b62cfb065', '1980-10-16 15:54:36', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (46, 'borer.onie@example.com', '79249536898', 'a9536444a96a1388def4953534372a34e648f5a5', '2005-02-20 14:34:09', '1999-08-13 06:52:37', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (47, 'amelie.lowe@example.com', '79490266313', 'b73f4969edfc95127d8fcc94936ddc44fea70cd4', '2003-10-12 19:21:18', '1990-11-20 03:03:14', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (48, 'ksimonis@example.com', '79650889012', '65a6000c73da811cb0fd318071db4a8a2e17546a', '1982-10-24 10:07:09', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (49, 'kgerlach@example.com', '79656869867', '61f0b17bbec4d5eaa457227a765564df2e68f8a8', '1975-03-20 03:51:36', '2014-12-14 14:58:02', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (50, 'ksenger@example.org', '79731762736', '47d9901d284a97ebefef976b209942b73b9394d7', '2009-03-18 17:49:37', '2004-08-16 09:45:14', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (51, 'randall.mante@example.net', '79833490971', '40c73f146bb28e6cd37d5821392114d70ca35bf9', '1984-12-07 22:35:28', '2011-06-03 15:02:55', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (52, 'conner08@example.org', '79973588101', '5bfaa28d1f82ea0551b9a90de988e2349a5de417', '1981-05-27 06:07:58', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (53, 'herman.darrell@example.net', '79613298476', '7a2832028da2c1dfd1e9efea6917380a108a9591', '2002-08-03 15:08:23', '2002-11-26 17:29:10', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (54, 'glover.jarrod@example.com', '79257927499', 'd3c21aba6cc7201c8cb370e53a8292ce9972fdb8', '1973-01-08 07:22:37', '1987-12-14 00:06:53', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (55, 'hgislason@example.org', '79779327856', '33385abb6165403ff4655bbc891a47b1afde8dd3', '1999-08-08 08:17:44', '1978-07-19 23:55:38', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (56, 'hartmann.rosie@example.com', '79813484207', '2389aff3dfaa1ea0cba6daa527fd581b90d61f13', '2002-10-11 04:48:22', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (57, 'rosa.jerde@example.net', '79290232908', 'e1d6fd22e6fee08424e1c4803cb9ac2abf244f09', '2019-02-18 11:34:47', '2007-03-23 18:44:07', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (58, 'dibbert.destin@example.com', '79222681273', '35e14aeb65db0e9e6635e8c8bee0049fc17e6ae5', '2007-08-10 16:25:51', '1985-05-11 13:59:46', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (59, 'reynolds.rhett@example.net', '79497782915', '0b54eb5105997a019654dba328053150cd2bc6c7', '2002-09-28 10:42:38', '1995-10-24 00:51:48', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (60, 'narciso.pouros@example.net', '79179504672', 'ff155e4b2bc47cb2ae432a2c50a37a781d61602b', '2017-11-19 13:04:55', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (61, 'price.leland@example.org', '79035926119', 'd2021772106187fb6f177a11cb6faaa22efe9c8d', '1977-04-03 13:41:54', '1991-12-12 02:19:52', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (62, 'qhammes@example.com', '79727953926', 'f76bf798dd9a704789533623aa5301731fa91973', '1988-06-27 00:14:14', '2006-01-08 18:24:12', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (63, 'jacinto.mertz@example.com', '79407724237', '2e38869538649552eef2f40734f5e07e250cbd65', '1992-12-14 10:54:10', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (64, 'chadd.upton@example.com', '79611784039', '8c3fa991b8afdfe8bf46fbe3f556f286c5bbdbfd', '1981-01-24 20:56:40', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (65, 'ulakin@example.com', '79638571866', '0bb76539dbe12541f4f437fb105226ea11c6c7f5', '2019-07-04 17:51:36', '1995-03-09 21:09:29', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (66, 'frederique72@example.org', '79201079297', '0c2aa84e63c16770fc0e8feb3ea529258cef9143', '2015-01-31 17:02:24', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (67, 'zita87@example.net', '79342299946', '67eb04bd1c4cd4b3f5b3307a8033323432bcbcf5', '1979-04-18 10:00:10', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (68, 'zjacobs@example.net', '79290079513', '729fe20195c621bd680941ef6c725b040a0a0080', '2003-04-29 08:27:20', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (69, 'ubruen@example.org', '79974326517', '50de76497a1c83906e68d66225a76675e3f2b060', '1978-03-19 22:09:18', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (70, 'ezekiel.toy@example.org', '79425729785', 'e7b3062f0ec40116a8ea5928829783361474d77e', '1973-04-14 00:11:00', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (71, 'ratke.arne@example.org', '79068895863', 'f42b0e9de683fbea84656840b87cc5e646e2ea42', '2000-09-26 08:59:07', '1999-05-23 09:55:08', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (72, 'erdman.providenci@example.org', '79108824210', '43b7e50a9c1e530e0ec9cadfa2ce7bb8d6bea1e5', '2007-05-22 04:56:30', '1971-11-16 06:40:03', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (73, 'nchamplin@example.com', '79199808430', 'ff9e6668e78390a5881bcf70fbe3c80e546d1638', '2012-03-22 07:05:24', '1985-04-08 12:04:52', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (74, 'macejkovic.chester@example.org', '79055635912', '61477624245d0b6195d723a6ea625e41b9238d30', '2004-05-16 11:02:35', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (75, 'viola.gleichner@example.com', '79438531177', '90b89e019051f2a45634834af1c3f72743e5fb07', '1978-07-12 12:38:00', '2007-01-16 08:58:54', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (76, 'victoria.mann@example.org', '79065126459', '7bbc4b719b4071b5092ee77d8e1e0be1f1dab9fe', '1994-07-08 15:58:55', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (77, 'julie92@example.com', '79261673004', 'd21c60d2a87dfffb899e03373122ef03d32f49e8', '2013-10-10 22:52:06', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (78, 'dblanda@example.net', '79437066176', 'f1f6ec20ac3f55e9b08b1f9ae9650900e8710b16', '2009-04-23 16:35:06', '1996-04-03 00:54:27', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (79, 'wintheiser.charlie@example.com', '79489608055', '9f1328bcea529fd6a5649b0aae96d2e37333b47d', '2006-01-23 16:50:24', '1984-05-21 09:50:31', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (80, 'oblanda@example.org', '79436453355', '91dfd34afc78fe3c426188cb43ccb5034f431c2d', '1986-06-22 23:25:55', '2006-04-05 14:17:01', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (81, 'oral35@example.com', '79728035041', 'c1cfde34b8d17ea98738ba5edc1f1d134e0d9508', '2006-03-22 04:16:08', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (82, 'kris.langosh@example.org', '79070529415', '679429cc259ece487d9c42d26bd742b104431ef1', '2009-06-15 13:16:36', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (83, 'xsmitham@example.org', '79365745723', '53fac1a807397550cba788d5bf8c2e754fe67407', '2005-03-09 05:42:47', '1992-09-20 04:15:25', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (84, 'adelle.hand@example.org', '79356626186', '83935e3bece911d8cdba41bcaf1ebbca439d7417', '1975-01-11 12:37:35', '1976-08-16 10:15:08', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (85, 'lulu36@example.org', '79184818875', 'a666011e0f5391eef807883e30cc54c19b63d653', '1997-09-12 07:10:43', '2009-05-27 02:24:13', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (86, 'schuppe.sammy@example.com', '79758586595', 'ddabf47eb9f45b0d6e53972acfe3fc332f8ae112', '1988-01-15 00:55:46', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (87, 'bulah.little@example.net', '79918312430', 'c66595935f9943abae92c125e7c7962401d62824', '2012-10-09 15:11:53', '1975-09-22 19:09:39', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (88, 'lauretta.rempel@example.org', '79204261881', '15d18d1cda4144904f96284cb26d26e881a424af', '1980-05-10 04:38:38', '2017-11-24 01:13:15', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (89, 'triston04@example.com', '79927974173', 'c7868a149ec1cb511b541c8af4c5ad3d6fdb7eaa', '1979-09-11 18:33:41', '1973-10-03 04:06:56', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (90, 'lindgren.orpha@example.org', '79474550392', '4c3a59fff94cba7e886d014c71a97c379906d1da', '1976-05-06 19:56:41', '2019-08-30 01:44:46', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (91, 'joyce.koepp@example.net', '79073802837', '6e17012c927849a00a26d983077475f18c6f8823', '1998-03-28 16:51:09', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (92, 'bethel.hand@example.com', '79980726814', 'de62bce18fe40aa8dfc515c6ac191031f430105b', '1996-06-13 11:42:12', '1989-03-03 02:29:08', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (93, 'bernhard.conroy@example.org', '79504069036', 'ef82b169a499053c75ebee1a7612801917c01304', '1970-03-25 02:20:52', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (94, 'martin.lockman@example.net', '79054585583', '80f2d3c395da279fd452f8c9d302ce7c8cc05d77', '1978-03-27 11:19:17', '2017-10-23 18:14:37', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (95, 'christian39@example.org', '79574981604', '0986ec5a51bcb85cfd82ff0a635ede3a6eb3dc9a', '2006-02-16 07:11:38', '1971-09-18 18:10:41', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (96, 'ohilll@example.org', '79079011825', '775b49e18eef9846b6fae8ee666dbb2c9121b3e4', '1980-09-26 07:54:35', '1979-09-20 15:57:50', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (97, 'savanah84@example.org', '79949577396', 'c29b6db1310047ed6654c30d6272ebbcb7e9511d', '2009-02-05 16:59:07', '1989-03-30 17:38:17', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (98, 'upton.daniella@example.com', '79989151285', 'bc390baa0dae24b09c3d68fe61c4fce61d646f09', '1973-01-07 14:18:14', '2017-11-09 09:14:28', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (99, 'hswift@example.org', '79407877333', 'a9be5bf73483fdbef16898a54d7b49a14ccbd49f', '1980-06-23 12:39:27', '0000-00-00 00:00:00', NULL);
INSERT INTO `user` (`id`, `email`, `phone`, `password_hash`, `created_at`, `updated_at`, `deleted_at`) VALUES (100, 'ccorkery@example.net', '79502303306', '512d855057353bc4c6b1a34b9385006a9327d792', '1990-10-08 01:15:54', '0000-00-00 00:00:00', NULL);


#
# TABLE STRUCTURE FOR: user_community
#

DROP TABLE IF EXISTS `user_community`;

CREATE TABLE `user_community` (
  `community_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`community_id`,`user_id`),
  KEY `fk_user_community_community1_idx` (`community_id`),
  KEY `fk_user_community_user1_idx` (`user_id`),
  CONSTRAINT `fk_user_community_community1` FOREIGN KEY (`community_id`) REFERENCES `community` (`id`),
  CONSTRAINT `fk_user_community_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (1, 4);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (1, 13);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (1, 26);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (1, 42);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (1, 57);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (1, 58);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (1, 73);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (1, 75);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (1, 78);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (1, 79);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (1, 85);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (1, 91);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (1, 95);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (1, 99);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (2, 1);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (2, 47);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (2, 61);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (2, 86);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (3, 21);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (3, 24);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (3, 30);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (3, 33);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (3, 40);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (3, 46);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (3, 49);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (3, 58);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (3, 71);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (3, 84);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (3, 99);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (4, 1);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (4, 4);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (4, 7);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (4, 29);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (4, 31);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (4, 40);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (4, 48);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (4, 61);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (4, 84);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (4, 88);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (4, 91);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (5, 60);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (5, 63);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (5, 67);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (5, 75);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (5, 79);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (5, 87);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (5, 88);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (5, 94);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (5, 96);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (5, 98);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (6, 6);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (6, 15);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (6, 23);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (6, 29);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (6, 35);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (6, 40);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (6, 51);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (6, 58);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (6, 60);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (6, 63);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (6, 69);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (6, 83);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (6, 86);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (6, 87);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (7, 4);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (7, 5);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (7, 6);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (7, 8);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (7, 9);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (7, 16);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (7, 18);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (7, 27);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (7, 53);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (7, 61);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (8, 17);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (8, 24);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (8, 28);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (8, 34);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (8, 43);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (8, 47);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (8, 49);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (8, 67);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (8, 72);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (8, 80);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (8, 92);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (9, 2);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (9, 43);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (9, 47);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (9, 72);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (9, 83);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (10, 22);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (10, 31);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (10, 43);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (10, 46);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (10, 72);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (10, 75);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (10, 78);
INSERT INTO `user_community` (`community_id`, `user_id`) VALUES (10, 94);


