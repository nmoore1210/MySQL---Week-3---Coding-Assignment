CREATE DATABASE IF NOT EXISTS social_media;

use social_media;

drop table if exists User;
drop table if exists Post;
drop table if exists Comment;

Create table User (

	id int(10) not null auto_increment,
	Email varchar(40) not null,
	Password varchar(40) not null,
	First_Name varchar(20) not null,
	Last_Name varchar(20) not null,
	primary key (id)
);

Create table Post (

	id int(10) not null auto_increment,
	Post_text TEXT not null, 
	Post_time TIME not null,
	Post_date DATE not null,
	User_id int(10) not null,
	primary key (id),
	foreign key (User_id) references User(id)
);


Create table Comment (
	
	id int(10) not null auto_increment,
	Comment_text TEXT not null,
	Comment_time TIME not null,
	Comment_date DATE not null,
	User_id int(10) not null,
	Post_id int(10) not null,
	primary key (id),
	foreign key (User_id) references User(id),
	foreign key (Post_id) references Post(id)
);