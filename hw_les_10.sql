
-- hw_les_10

-- 1. Проанализировать какие запросы могут выполняться наиболее часто в процессе работы 
-- приложения и добавить необходимые индексы.

CREATE INDEX users_email_idx ON users(email);

CREATE INDEX profiles_birthday_idx ON profiles(birthday);

CREATE INDEX messages_from_user_id_to_user_id_idx ON messages (from_user_id, to_user_id);


-- индекс для поиска пользователей по имени и фамилии
CREATE INDEX users_frist_name_last_name_idx ON users(first_name, last_name);

-- индекс для поиска пользователей по стране и городу
CREATE INDEX profiles_country_city_idx ON profiles(country, city);

-- индекс для поиска всех медиа файлов пользователя
create index media_user_id_media_type_id_idx on media(user_id,media_type_id);

-- для поиска групп по имени ВК
create unique index communities_name_uq on comunities (name);

-- для поиска друзей друзей или формирвоания списка друзей пользователя
create unique index friendship_user_id_friend_id_status_id_uq on friendship (user_id, friend_id, status_id);

-- для промотра списка пользователей кто поставил лайк тому или иному медаифайлу или посту
create unique index likes_user_id_target_id_target_type_id on likes(user_id, target_id, target_type_id);


-- 2. Задание на оконные функции
-- Построить запрос, который будет выводить следующие столбцы:

-- 	имя группы+
	
-- 	среднее количество пользователей в группах  - 
	
-- 	самый молодой пользователь в группе+
-- 	самый старший пользователь в группе+
-- 	общее количество пользователей в группе+
-- 	всего пользователей в системе+
-- 	отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100+


		
select distinct co.name,
		count(u.id) over()/24 as avg_quantity,
		first_value(concat(u.first_name,' ',u.last_name)) over(partition by cu.community_id order by p.birthday) as older_user,
		first_value(concat(u.first_name,' ',u.last_name)) over(partition by cu.community_id order by p.birthday desc) as yanger_user,
		count(p.user_id) over(partition by cu.community_id) as tot_amo_us_in_g,
		count(u.id) over() as total_users,
		count(p.user_id) over(partition by cu.community_id)/count(*) over()*100 as '%%'
	from profiles p 
		join communities_users cu
			on p.user_id = cu.user_id 
		join communities co
			on cu.community_id =co.id 
		join users u
			on p.user_id =u.id;


		
