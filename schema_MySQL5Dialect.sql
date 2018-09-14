drop table if exists ACCOUNT;
drop table if exists CITY;
drop table if exists STATION;
create table ACCOUNT (ID integer not null auto_increment, CREATED_AT datetime not null, MODIFIED_AT datetime, CREATED_BY integer, MODIFIED_BY integer, primary key (ID)) engine=MyISAM;
create table CITY (ID integer not null auto_increment, CREATED_AT datetime not null, MODIFIED_AT datetime, DISTRICT varchar(32) not null, NAME varchar(32) not null, REGION varchar(32) not null, CREATED_BY integer, MODIFIED_BY integer, primary key (ID)) engine=MyISAM;
create table STATION (ID integer not null auto_increment, CREATED_AT datetime not null, MODIFIED_AT datetime, APARTMENT varchar(16), HOUSE_NO varchar(16), STREET varchar(32), ZIP_CODE varchar(10), X double precision, Y double precision, PHONE varchar(16), TRANSPORT_TYPE varchar(255) not null, CREATED_BY integer, MODIFIED_BY integer, CITY_ID integer, primary key (ID)) engine=MyISAM;
alter table ACCOUNT add constraint FK9rxadd7hdlmarov6qbvaot0po foreign key (CREATED_BY) references ACCOUNT (ID);
alter table ACCOUNT add constraint FK4cfkq2sywnlcu6fxm9xbrmsjs foreign key (MODIFIED_BY) references ACCOUNT (ID);
alter table CITY add constraint FKg20pyto8we1mjpxdf0ixmfkgd foreign key (CREATED_BY) references ACCOUNT (ID);
alter table CITY add constraint FKi4i6u7b4qdx3pjr1j6qq6y2vm foreign key (MODIFIED_BY) references ACCOUNT (ID);
alter table STATION add constraint FKanu16qi926w9omslreoj7smq1 foreign key (CREATED_BY) references ACCOUNT (ID);
alter table STATION add constraint FKp7x70rdqw4fidaslc492bnfgk foreign key (MODIFIED_BY) references ACCOUNT (ID);
alter table STATION add constraint FKl8s21emvhb86aubh7m389hrlo foreign key (CITY_ID) references CITY (ID);
drop table if exists ACCOUNT;
drop table if exists CITY;
drop table if exists STATION;
create table ACCOUNT (ID integer not null auto_increment, CREATED_AT datetime not null, MODIFIED_AT datetime, CREATED_BY integer, MODIFIED_BY integer, primary key (ID)) engine=MyISAM;
create table CITY (ID integer not null auto_increment, CREATED_AT datetime not null, MODIFIED_AT datetime, DISTRICT varchar(32) not null, NAME varchar(32) not null, REGION varchar(32) not null, CREATED_BY integer, MODIFIED_BY integer, primary key (ID)) engine=MyISAM;
create table STATION (ID integer not null auto_increment, CREATED_AT datetime not null, MODIFIED_AT datetime, APARTMENT varchar(16), HOUSE_NO varchar(16), STREET varchar(32), ZIP_CODE varchar(10), X double precision, Y double precision, PHONE varchar(16), TRANSPORT_TYPE varchar(255) not null, CREATED_BY integer, MODIFIED_BY integer, CITY_ID integer, primary key (ID)) engine=MyISAM;
alter table ACCOUNT add constraint FK9rxadd7hdlmarov6qbvaot0po foreign key (CREATED_BY) references ACCOUNT (ID);
alter table ACCOUNT add constraint FK4cfkq2sywnlcu6fxm9xbrmsjs foreign key (MODIFIED_BY) references ACCOUNT (ID);
alter table CITY add constraint FKg20pyto8we1mjpxdf0ixmfkgd foreign key (CREATED_BY) references ACCOUNT (ID);
alter table CITY add constraint FKi4i6u7b4qdx3pjr1j6qq6y2vm foreign key (MODIFIED_BY) references ACCOUNT (ID);
alter table STATION add constraint FKanu16qi926w9omslreoj7smq1 foreign key (CREATED_BY) references ACCOUNT (ID);
alter table STATION add constraint FKp7x70rdqw4fidaslc492bnfgk foreign key (MODIFIED_BY) references ACCOUNT (ID);
alter table STATION add constraint FKl8s21emvhb86aubh7m389hrlo foreign key (CITY_ID) references CITY (ID);
