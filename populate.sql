# SQL queries to populate databases of majors, indutries

create table majors(
	mid int PRIMARY KEY,
	mname varchar(30),
	start_salary int
);

create table industries(
	iid int PRIMARY KEY,
	iname varchar(100),
	perc_women decimal,
	perc_union decimal,
	exp_text varchar(10000)

	check (perc_women >=0 && perc_women <= 100),
	check (%union >= 0 && perc_union <= 100)
);

create table matches(
	mid int,
	iid int,
	(mid, iid) PRIMARY KEY
);


create table race(
	iid int PRIMARY KEY,
	iname varchar(100),
	perc_white decimal,
	perc_black decimal,
	perc_hisp_latino decimal,
	perc_asian decimal

	check (perc_white >=0 && perc_white <= 100),
	check (perc_black >=0 && perc_black <= 100),
	check (perc_hisp_latino >=0 && perc_hisp_latino <= 100),
	check (perc_asian >= 0 && perc_asian <= 100)
);


insert into majors values (10, 'Mechanical Engineering', 63527);
insert into majors values (11, 'Chemical Engineering', 68031);
insert into majors values (12, 'Electrical Engineering', 67593);
insert into majors values (13, 'Civil Engineering', 58840);
insert into majors values (14, 'General Engineering', NULL);

insert into industries values ();
insert into industries values ();

Agriculture
Aerospace & Automotive
Chemical & Pharmaceutical
Construction
Defense
Electric Power, Telecom, & Utility
Electronics
Energy
Manufacturing (Mining, paper, steel, textiles)
Water
Education
Financial Services
Healthcare
Software
Transportation
Other
