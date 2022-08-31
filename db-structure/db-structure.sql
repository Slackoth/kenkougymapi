create table kenkou_user(
	username varchar(30) primary key,
	email varchar(255) not null,
	first_name varchar(255) not null,
	last_name varchar(255) not null,
	password text not null,
	enabled boolean not null default true,
	locked boolean not null default false,
	credentials_expiration date not null default current_date + interval '6 months'
);

create table kenkou_role(
	role_code varchar(20) primary key,
	role_name varchar(100) not null
);

create table user_role(
	username varchar(30),
	role_code varchar(20),
	primary key(username, role_code)
);

alter table user_role add constraint FK_USER_ROLE_IS_KENKOU_ROLE
foreign key (role_code) references kenkou_role(role_code);
alter table user_role add constraint FK_USER_ROLE_IS_KENKOU_USER
foreign key (username) references kenkou_user(username);