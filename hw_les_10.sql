
-- hw_les_10

-- 1. ���������������� ����� ������� ����� ����������� �������� ����� � �������� ������ 
-- ���������� � �������� ����������� �������.

CREATE INDEX users_email_idx ON users(email);

CREATE INDEX profiles_birthday_idx ON profiles(birthday);

CREATE INDEX messages_from_user_id_to_user_id_idx ON messages (from_user_id, to_user_id);


-- ������ ��� ������ ������������� �� ����� � �������
CREATE INDEX users_frist_name_last_name_idx ON users(first_name, last_name);

-- ������ ��� ������ ������������� �� ������ � ������
CREATE INDEX profiles_country_city_idx ON profiles(country, city);

-- ������ ��� ������ ���� ����� ������ ������������
create index media_user_id_media_type_id_idx on media(user_id,media_type_id);

-- ��� ������ ����� �� ����� ��
create unique index communities_name_uq on comunities (name);

-- ��� ������ ������ ������ ��� ������������ ������ ������ ������������
create unique index friendship_user_id_friend_id_status_id_uq on friendship (user_id, friend_id, status_id);

-- ��� �������� ������ ������������� ��� �������� ���� ���� ��� ����� ���������� ��� �����
create unique index likes_user_id_target_id_target_type_id on likes(user_id, target_id, target_type_id);


-- 2. ������� �� ������� �������
-- ��������� ������, ������� ����� �������� ��������� �������:

-- 	��� ������+
	
-- 	������� ���������� ������������� � �������  - 
	
-- 	����� ������� ������������ � ������+
-- 	����� ������� ������������ � ������+
-- 	����� ���������� ������������� � ������+
-- 	����� ������������� � �������+
-- 	��������� � ��������� (����� ���������� ������������� � ������ / ����� ������������� � �������) * 100+


		
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


		
