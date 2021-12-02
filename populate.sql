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
	exp_text longtext,

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
	perc_asian decimal,
	perc_hisp_latino decimal,

	check (perc_white >=0 && perc_white <= 100),
	check (perc_black >=0 && perc_black <= 100),
	check (perc_hisp_latino >=0 && perc_hisp_latino <= 100),
	check (perc_asian >= 0 && perc_asian <= 100)
);


// id, name, starting salary
insert into majors values (10, 'Mechanical Engineering', 63527);
insert into majors values (11, 'Chemical Engineering', 68031);
insert into majors values (12, 'Electrical Engineering', 67593);
insert into majors values (13, 'Civil Engineering', 58840);


// id, name, %women, %union, explanation
insert into industries values (100, 'Agriculture', 27.7, 1.7, );
insert into industries values (101, 'Aerospace & Automotive', 11.3, 1.4, );
insert into industries values (102, 'Chemical & Pharmaceutical', 36.3, 8.2, );
insert into industries values (103, 'Construction', 10.9, 12.6, );
insert into industries values (104, 'Defense', 16.2, 0, );
insert into industries values (105, 'Electric Power, Telecom, & Utility', 21.4, 23.4, );
insert into industries values (106, 'Electronics', 27.0, 3.8, );
insert into industries values (107, 'Energy', 14.5, 4.0, );
insert into industries values (108, 'Manufacturing', 36.6, 8.6, );
insert into industries values (109, 'Wastewater', 15.5, 3.6, );
insert into industries values (110, 'Education', 69.5, 12.3, );
insert into industries values (111, 'Financial Services', 53.4, 1.1, );
insert into industries values (112, 'Healthcare', 77.8, 6.8, );
insert into industries values (113, 'Software', 39.3, 3.8, );
insert into industries values (114, 'Transportation', 24.6, 16.1, );
insert into industries values (115, 'Other', 52.6, 2.8, );

// id, name, %white, %black, %asian, %hispanic/latino
insert into race values (100, 'Agriculture', 92.4, 2.8, 1.2, 24.2);
insert into race values (101, 'Aerospace & Automotive', 86.5, 7.4, 2.6, 25.1);
insert into race values (102, 'Chemical & Pharmaceutical', 76.7, 9.8, 11.1, 14.3);
insert into race values (103, 'Construction', 88.6, 6.0, 2.0, 30.0);
insert into race values (104, 'Defense', 69.1, 16.8, 4.4, 17.9);
insert into race values (105, 'Electric Power, Telecom, & Utility', 84.9, 8.1, 4.5, 14.2);
insert into race values (106, 'Electronics', 67.5, 7.8, 22.6, 7.5);
insert into race values (107, 'Energy', 87.2, 4.6, 4.2, 17.0);
insert into race values (108, 'Manufacturing', 79.5, 12.1, 12.9, 22.8);
insert into race values (109, 'Wastewater', 79.8, 14.5, 2.4, 24.8);
insert into race values (110, 'Education', 80.7, 10.8, 5.4, 12.5);
insert into race values (111, 'Financial Services', 77.5, 10.8, 9.3, 11.4);
insert into race values (112, 'Healthcare', 72.5, 17.4, 6.8, 13.6);
insert into race values (113, 'Software', 66.5, 7.5, 22.7, 9.0);
insert into race values (114, 'Transportation', 70.1, 20.7, 5.6, 20.8);
insert into race values (115, 'Other', 78.5, 10.3, 7.7, 19.7);

// mid, iid
insert into matches values (13, 103); // CivE matches
insert into matches values (13, 104);
insert into matches values (13, 105);
insert into matches values (13, 107);
insert into matches values (13, 108);
insert into matches values (13, 109);
insert into matches values (13, 110);
insert into matches values (13, 114);
insert into matches values (13, 115);

insert into matches values (11, 102); // ChemE matches
insert into matches values (11, 107);
insert into matches values (11, 108);
insert into matches values (11, 109);
insert into matches values (11, 110);
insert into matches values (11, 112);
insert into matches values (11, 115);


insert into matches values (12, 100); // EE matches
insert into matches values (12, 101);
insert into matches values (12, 100);
insert into matches values (12, 103);
insert into matches values (12, 104);
insert into matches values (12, 105);
insert into matches values (12, 106);
insert into matches values (12, 107);
insert into matches values (12, 110);
insert into matches values (12, 111);
insert into matches values (12, 112);
insert into matches values (12, 113);
insert into matches values (12, 114);
insert into matches values (12, 115);

insert into matches values (10, 100); // MechE matches
insert into matches values (10, 101);
insert into matches values (10, 103);
insert into matches values (10, 104);
insert into matches values (10, 105);
insert into matches values (10, 107);
insert into matches values (10, 108);
insert into matches values (10, 109);
insert into matches values (10, 110);
insert into matches values (10, 112);
insert into matches values (10, 114);
insert into matches values (10, 115);

