CREATE TABLE movies
(title varchar(100) not null,
movieyear int not null,
id int,
primary key (id)
);

CREATE TABLE critics
(firstname varchar(40) not null,
lastname varchar(40) not null,
id int,
primary key (id)
);

CREATE TABLE ratings
(critic_rating int,
movie int,
critic int,
id int,
primary key (critic, movie),
foreign key (critic) references critics(id),
foreign key (movie) references movies(id)
);

Insert into movies values ('Glass', 2019, 1);
Insert into movies values ('The Upside', 2019, 2);
Insert into movies values ('Miss Bala', 2019, 3);
Insert into movies values ('Aquaman', 2019, 4);
Insert into movies values ('Spider-Man: Into the Spider', 2019, 5);
Insert into movies values ('Green Book', 2019, 6);

insert into critics values ('Donna','Valore',1);
insert into critics values ('Anthony','Valore',2);
insert into critics values ('Anthony Jr.','Valore',3);
insert into critics values ('Samantha','Grande',4);
insert into critics values ('Melanie','Grande',5);

/*Insert ratings for the first movie Glass */

insert into ratings values (5,1,1,1);
insert into ratings values (4,1,2,2);
insert into ratings values (5,1,3,3);
insert into ratings values (3,1,4,4);
insert into ratings values (5,1,5,5);

/*Insert ratings for the second movie The Upside */

insert into ratings values (2,2,1,1);
insert into ratings values (5,2,2,2);
insert into ratings values (5,2,3,3);
insert into ratings values (3,2,4,4);
insert into ratings values (4,2,5,5);

/*Insert ratings for the third movie Miss Bala */

insert into ratings values (2,3,1,1);
insert into ratings values (4,3,2,2);
insert into ratings values (4,3,3,3);
insert into ratings values (5,3,4,4);
insert into ratings values (3,3,5,5);

/*Insert ratings for the fourth movie Aquaman */

insert into ratings values (4,4,1,1);
insert into ratings values (5,4,2,2);
insert into ratings values (2,4,3,3);
insert into ratings values (1,4,4,4);
insert into ratings values (5,4,5,5); 

/*Insert ratings for the fifth movie Spiderman */

insert into ratings values (3,5,1,1);
insert into ratings values (2,5,2,2);
insert into ratings values (1,5,3,3);
insert into ratings values (4,5,4,4);
insert into ratings values (3,5,5,5);

/*Insert ratings for the sixth movie Green Book */

insert into ratings values (5,6,1,1);
insert into ratings values (5,6,2,2);
insert into ratings values (3,6,3,3);
insert into ratings values (4,6,4,4);
insert into ratings values (1,6,5,5);




