
-- les_9 Video
-- 1.1.¬ базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных.ѕереместите запись id = 1 из таблицы shop.users в таблицу sample.users.»спользуйте транзакции.

START TRANSACTION;

	INSERT INTO sample.users SELECT * FROM shop.users WHERE shop.users.id = 1;
	DELETE FROM shop.users WHERE shop.users.id = 1;
	
COMMIT;

-- 1.2.—оздайте представление, которое выводит название name товарной позиции из таблицы products и соответствующее название каталога name из таблицы catalogs.

CREATE OR replace VIEW 
	names_prod_and_catalogs AS
		SELECT products.name AS name_pfod,
				catalogs.name AS name_of_catalog
			FROM products
				JOIN catalogs
					ON products.catalog_id = catalogs.id;


-- 1.3.ѕусть имеетс€ таблица с календарным полем created_at. ¬ ней размещены разреженые календарные записи за август 2018 года '2018-08-01', '2018-08-04', 
-- '2018-08-16' и 2018-08-17. —оставьте запрос, который выводит полный список дат за август, выставл€€ в соседнем поле значение 1, если дата присутствует в исходном таблице и 0, если она отсутствует.


CREATE TABLE IF NOT EXISTS input_dates (
	id serial PRIMARY key,
	name VARCHAR(255),
	created_at DATE not null);


insert into input_dates values
(1, "first date", '2018-08-01'),
(2, "second date", '2018-08-04'),
(3, "third date", '2018-08-16'),
(4, "fourth date", '2018-08-17');


create temporary table nums_0_30 (
	numbers INT
	);

insert into nums_0_30 values
		(0), (1), (2), (3), (4), (5), (6), (7), (8), (9), (10),
	(11), (12), (13), (14), (15), (16), (17), (18), (19), (20),
	(21), (22), (23), (24), (25), (26), (27), (28), (29), (30);


select date(date('2018-08-31') - interval nums_0_30.numbers day) as dates,
		not ISNULL(input_dates.name) as is_date_in_inquiry
	from nums_0_30
		left join input_dates 
			on date(date('2018-08-31') - interval nums_0_30.numbers day) = input_dates.created_at
		order by dates;


	
	
-- 1.4.ѕусть имеетс€ люба€ таблица с календарным полем created_at. 
-- —оздайте запрос, который удал€ет устаревшие записи из таблицы, оставл€€
-- только 5 самых свежих записей.

DROP TABLE IF EXISTS posts;
CREATE TABLE IF NOT EXISTS posts (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  created_at DATE NOT NULL
);

INSERT INTO posts VALUES
(NULL, 'перва€ запись', '2018-11-01'),
(NULL, 'втора€ запись', '2018-11-02'),
(NULL, 'треть€ запись', '2018-11-03'),
(NULL, 'четверта€ запись', '2018-11-04'),
(NULL, 'п€та€ запись', '2018-11-05'),
(NULL, 'шеста€ запись', '2018-11-06'),
(NULL, 'седьма€ запись', '2018-11-07'),
(NULL, 'восьма€ запись', '2018-11-08'),
(NULL, 'дев€та€ запись', '2018-11-09'),
(NULL, 'дес€та€ запись', '2018-11-10');


DELETE
  posts
FROM
  posts
JOIN
 (SELECT
    created_at
  FROM
    posts
  ORDER BY
    created_at DESC
  LIMIT 4, 1) AS delpst
ON
  posts.created_at >= delpst.created_at;

 
 
 
-- 3.1
 
 DELIMITER //

CREATE FUNCTION hello ()
RETURNS TINYTEXT NO SQL
BEGIN
  DECLARE hour INT;
  SET hour = HOUR(NOW());
  CASE
    WHEN hour BETWEEN 0 AND 5 THEN
      RETURN "ƒоброй ночи";
    WHEN hour BETWEEN 6 AND 11 THEN
      RETURN "ƒоброе утро";
    WHEN hour BETWEEN 12 AND 17 THEN
      RETURN "ƒобрый день";
    WHEN hour BETWEEN 18 AND 23 THEN
      RETURN "ƒобрый вечер";
  END CASE;
END//

DELIMITER ;
SELECT NOW(), hello ();


-- 3.2.

DELIMITER //

CREATE TRIGGER validate_name_description_insert BEFORE INSERT ON products
FOR EACH ROW BEGIN
  IF NEW.name IS NULL AND NEW.description IS NULL THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Both name and description are NULL';
  END IF;
END//

INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  (NULL, NULL, 9360.00, 2)//

INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  ('ASUS PRIME Z370-P', 'HDMI, SATA3, PCI Express 3.0,, USB 3.1', 9360.00, 2)//

INSERT INTO products
  (name, description, price, catalog_id)
VALUES
  (NULL, 'HDMI, SATA3, PCI Express 3.0,, USB 3.1', 9360.00, 2)//

CREATE TRIGGER validate_name_description_update BEFORE UPDATE ON products
FOR EACH ROW BEGIN
  IF NEW.name IS NULL AND NEW.description IS NULL THEN
    SIGNAL SQLSTATE '45000'
    SET MESSAGE_TEXT = 'Both name and description are NULL';
  END IF;
END//


 
 
		
	