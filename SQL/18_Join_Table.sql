/* 
JOIN TABle 
1. LEFT JOIN
2. RIGHT JOIN
3. INNER JOIN
4. UNION ALL
*/


create table jt.tabela (
	user_id integer primary key,
	nama varchar(50),
	ekonomi text
);

alter table jt.tabela rename column panggilan to hobby;

create table jt.tabelb (
	user_id integer primary key,
	domisili text,
	crush varchar(50)
);

insert into jt.tabela (user_id ,nama, hobby)
values (1, 'Felix' , 'berenang');

insert into jt.tabela (user_id ,nama, hobby)
values (2, 'Ghinova' , 'menggambar');

insert into jt.tabela (user_id ,nama, hobby)
values (7, 'Rael' , 'Bermain Game');

insert into jt.tabela (user_id ,nama, hobby)
values (8, 'Epul' , 'ngoding');

insert into jt.tabela (user_id ,nama, hobby)
values (9, 'Ghal' , 'menyanyi');

insert into jt.tabelb (user_id, domisili, crush)
values (1, 'Parongpong', 'Ghinova');

insert into jt.tabelb (user_id, domisili, crush)
values (2, 'Cimeunyan', 'Felix');

insert into jt.tabelb (user_id, domisili, crush)
values (3, 'Cimahi', 'lala');

insert into jt.tabelb (user_id, domisili, crush)
values (4, 'Sumatra utara', 'nina');

insert into jt.tabelb (user_id, domisili, crush)
values (5, 'kota tua juga', 'ipal');

select * from jt.tabela;
select * from jt.tabelb;

/*
1. Tampilkan user_id,nama dan hobby
2. di query yang sama. tampilkan domisili dan crsuh tiap user_id
3. Asumsikan tabel rujukan adalah tabel A
*/

select 
	A.user_id,
	A.nama,
	A.hobby,
	B.domisili,
	B.crush
from jt.tabela A left join jt.tabelb B on A.user_id = B.user_id left join jt.tabela C ;

select 
	A.user_id,
	A.nama,
	A.hobby,
	B.domisili,
	B.crush
from jt.tabela A right join jt.tabelb B on A.user_id = B.user_id ;

--inner join
select 
	A.user_id,
	A.nama,
	A.hobby,
	B.domisili,
	B.crush
from jt.tabela A inner join jt.tabelb B on A.user_id = B.user_id ;




