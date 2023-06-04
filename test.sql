select * from employees where emp_no<100;


-- nemeh
 INSERT INTO employees values 
    (1, '2004-03-03','Ermuun','Oyunbayar','M','2023-02-28'),
    (2, '2003-12-11','Temuulen','Bayarsaikhan','M','2023-02-28'),
    (3, '1996-10-31','Anerchy','Tumenbayar','M','2023-02-28'),
    (4, '2000-07-16','Sukhbat','Oyuntsetseg','M','2023-02-28'),
    (5, '1999-09-01','Temuulen','Munkhjargal','M','2023-02-28');

-- ustgah 
delete from employees where emp_no=1;
-- update
update  employees set gender='F' where emp_no=1;

create table user(
    id INT AUTO_INCREMENT,
    phone INT UNIQUE,
    email VARCHAR(255) not null,
    primary key(id)
);
create table category(
    id INT UNSIGNED AUTO_INCREMENT,
    name varchar(255), 
    slug  varchar(255) UNIQUE,
    description TEXT,
    productCount int UNSIGNED DEFAULT 0,
    createdDate datetime,
    primary key(id)
);
INSERT INTO category(name,slug,createdAt)value('shoes','shoes',now());

alter table category drop column description;
alter table category add column imageUrl varchar(500);
alter table category drop column imageUrl;
alter table category add column imageUrl varchar(500) after slug;
alter table category modify column imageUrl varchar(200);
alter table category RENAME column imageUrl TO imageAddress;

create table user(id INT UNSIGNED AUTO_INCREMENT,name varchar(30),birth_date datetime,primary key(id));
create table product(id INT UNSIGNED AUTO_INCREMENT,name varchar(30) ,primary key(id));
